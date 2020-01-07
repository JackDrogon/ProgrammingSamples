#pragma once

#include <memory>
#include <string>
#include <unordered_set>

#include <grpc/support/log.h>
#include <grpcpp/grpcpp.h>

// TODO: Check thread support
// TODO: Add zerobased class for dctor calling by server dctor, or use singleton

class Callable {
public:
	virtual ~Callable() = default;
	virtual void Call() = 0;
};

template <typename Service>
class GrpcAsyncService final {
public:
	template <typename Request, typename Response, int MethodIndex>
	class CallData;

public:
	template <typename Request, typename Response, int MethodIndex>
	static void
	Register(grpc::ServerCompletionQueue *cq,
		 typename CallData<Request, Response,
				   MethodIndex>::ServiceRegisterType
		     service_register,
		 typename CallData<Request, Response, MethodIndex>::CallbackType
		     request_callback,
		 typename CallData<Request, Response, MethodIndex>::CallbackType
		     finish_callback)
	{
		CallData<Request, Response, MethodIndex>::service_register =
		    std::move(service_register);
		CallData<Request, Response, MethodIndex>::request_callback =
		    std::move(request_callback);
		CallData<Request, Response, MethodIndex>::finish_callback =
		    std::move(finish_callback);

		// Spawn a new CallData instance to serve new clients.
		new CallData<Request, Response, MethodIndex>(&service_, cq);
	}

public:
	static typename Service::AsyncService service_;
};

template <typename Service>
typename Service::AsyncService GrpcAsyncService<Service>::service_{};

class GrpcAsyncServer final {
public:
	GrpcAsyncServer(std::string server_address)
	    : server_address_(std::move(server_address))
	{
		// Listen on the given address without any authentication
		// mechanism.
		builder_.AddListeningPort(server_address_,
					  grpc::InsecureServerCredentials());
		cq_ = builder_.AddCompletionQueue();
	}

	~GrpcAsyncServer()
	{
		server_->Shutdown();
		// Always shutdown the completion queue after the server.
		cq_->Shutdown();
	}

	[[noreturn]] void Run()
	{
		{
			std::lock_guard<std::mutex> lock(register_mutex_);
			if (!register_done_) {
				// Get hold of the completion queue used for the
				// asynchronous communication with the gRPC
				// runtime. Finally assemble the server.
				// TODO: maybe need release register_serivces_,
				// calldata_registers_, builder_
				for (auto register_serivce :
				     register_serivces_) {
					builder_.RegisterService(
					    register_serivce);
				}
				server_ = builder_.BuildAndStart();
				for (auto &calldata_register :
				     calldata_registers_) {
					calldata_register();
				}

				register_done_ = true;
			}
		}

		HandleRpcs();
	}

	[[noreturn]] void HandleRpcs()
	{
		void *tag; // uniquely identifies a request.
		bool ok;
		while (true) {
			// Block waiting to read the next event from the
			// completion queue. The event is uniquely identified by
			// its tag, which in this case is the memory address of
			// a CallData instance. The return value of Next should
			// always be checked. This return value tells us whether
			// there is any kind of event or cq_ is shutting down.
			GPR_ASSERT(cq_->Next(&tag, &ok));
			GPR_ASSERT(ok);
			static_cast<Callable *>(tag)->Call();
		}
	}

	template <typename Service, typename Request, typename Response,
		  int MethodIndex>
	GrpcAsyncServer &Register(
	    const typename GrpcAsyncService<Service>::template CallData<
		Request, Response, MethodIndex>::ServiceRegisterType
		&service_register,
	    const typename GrpcAsyncService<Service>::template CallData<
		Request, Response, MethodIndex>::CallbackType &request_callback,
	    const typename GrpcAsyncService<Service>::template CallData<
		Request, Response, MethodIndex>::CallbackType &finish_callback =
		nullptr)
	{
		std::lock_guard<std::mutex> lock(register_mutex_);

		if (!register_done_) {
			// Register "service_" as the instance through which
			// we'll communicate with clients. In this case it
			// corresponds to an *asynchronous* service.
			// TODO: only once, singleton
			register_serivces_.insert(
			    &GrpcAsyncService<Service>::service_);

			auto calldata_register = [=]() {
				GrpcAsyncService<Service>::template Register<
				    Request, Response, MethodIndex>(
				    cq_.get(), service_register,
				    request_callback, finish_callback);
			};
			calldata_registers_.emplace_back(calldata_register);
		}

		return *this;
	}

private:
	std::string server_address_;
	std::unique_ptr<grpc::Server> server_;
	grpc::ServerBuilder builder_;

	std::unique_ptr<grpc::ServerCompletionQueue> cq_;

	std::mutex register_mutex_;
	bool register_done_ = false;
	std::unordered_set<grpc::Service *> register_serivces_;
	std::vector<std::function<void()>> calldata_registers_;
};

template <typename Service>
template <typename Request, typename Response, int MethodIndex>
class GrpcAsyncService<Service>::CallData final : public Callable {
public:
	template <class W>
	using ServerAsyncResponseWriter =
	    ::grpc_impl::ServerAsyncResponseWriter<W>;

	using CallbackType =
	    std::function<void(grpc::ServerContext *, Request *, Response *,
			       ServerAsyncResponseWriter<Response> *, void *)>;
	using ServiceRegisterType = std::function<void(
	    typename Service::AsyncService *, grpc::ServerContext *, Request *,
	    ServerAsyncResponseWriter<Response> *, grpc::CompletionQueue *,
	    grpc::ServerCompletionQueue *, void *)>;

public:
	// Take in the "service" instance (in this case representing an
	// asynchronous server) and the completion queue "cq" used for
	// asynchronous communication with the gRPC runtime.
	CallData(typename Service::AsyncService *service,
		 grpc::ServerCompletionQueue *cq)
	    : service_(service), cq_(cq), responder_(&ctx_), status_(CREATE)
	{
		// Invoke the serving logic right away.
		Call();
	}

	void Call() override
	{
		switch (status_) {
		case CREATE:
			// Make this instance progress to the PROCESS state.
			status_ = PROCESS;

			// As part of the initial CREATE state, we *request*
			// that the system start processing SayHello requests.
			// In this request, "this" acts are the tag uniquely
			// identifying the request (so that different CallData
			// instances can serve different requests concurrently),
			// in this case the memory address of this CallData;
			// instance.
			service_register(service_, &ctx_, &request_,
					 &responder_, cq_, cq_, this);

			break;
		case PROCESS:
			status_ = FINISH;

			// Spawn a new CallData instance to serve new clients
			// while we process the one for this CallData. The
			// instance will deallocate itself as part of its FINISH
			// state.
			new CallData(service_, cq_);

			// The actual processing.
			// And we are done! Let the gRPC runtime know we've
			// finished, using the memory address of this instance
			// as the uniquely identifying tag for the event.
			request_callback(&ctx_, &request_, &response_,
					 &responder_, this);

			break;
		case FINISH:
			if (finish_callback) {
				finish_callback(&ctx_, &request_, &response_,
						&responder_, this);
			}
			// Once in the FINISH state, deallocate ourselves
			// (CallData).
			delete this;

			break;
		}
	}

public:
	// RegisterService
	static ServiceRegisterType service_register;

	// What we callback
	static CallbackType request_callback;
	static CallbackType finish_callback;

private:
	// The means of communication with the gRPC runtime for an asynchronous
	// server.
	typename Service::AsyncService *service_;
	// The producer-consumer queue where for asynchronous server
	// notifications.
	grpc::ServerCompletionQueue *cq_;
	// Context for the rpc, allowing to tweak aspects of it such as the use
	// of compression, authentication, as well as to send metadata back to
	// the client.
	grpc::ServerContext ctx_;

	// The means to get back to the client.
	ServerAsyncResponseWriter<Response> responder_;

	// What we get from the client.
	Request request_;
	// What we send back to the client.
	Response response_;

	// Let's implement a tiny state machine with the following states.
	enum CallStatus { CREATE, PROCESS, FINISH };
	CallStatus status_; // The current serving state.
};

template <typename Service>
template <typename Request, typename Response, int MethodIndex>
typename GrpcAsyncService<Service>::template CallData<
    Request, Response, MethodIndex>::ServiceRegisterType
    GrpcAsyncService<Service>::CallData<Request, Response,
					MethodIndex>::service_register;

template <typename Service>
template <typename Request, typename Response, int MethodIndex>
typename GrpcAsyncService<Service>::template CallData<Request, Response,
						      MethodIndex>::CallbackType
    GrpcAsyncService<Service>::template CallData<Request, Response,
						 MethodIndex>::request_callback;

template <typename Service>
template <typename Request, typename Response, int MethodIndex>
typename GrpcAsyncService<Service>::template CallData<Request, Response,
						      MethodIndex>::CallbackType
    GrpcAsyncService<Service>::template CallData<Request, Response,
						 MethodIndex>::finish_callback;

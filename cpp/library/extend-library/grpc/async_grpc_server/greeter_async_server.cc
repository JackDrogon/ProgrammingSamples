/*
 *
 * Copyright 2015 gRPC authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#include <iostream>
#include <thread>
#include <vector>

#include "grpc_async_server.hh"

#include "helloworld.grpc.pb.h"

using grpc::Server;
using grpc::ServerAsyncResponseWriter;
using grpc::ServerBuilder;
using grpc::ServerCompletionQueue;
using grpc::ServerContext;
using grpc::Status;
using helloworld::Foo;
using helloworld::Greeter;
using helloworld::HelloReply;
using helloworld::HelloRequest;
using helloworld::WorldReply;
using helloworld::WorldRequest;

void say_hello(grpc::ServerContext *ctx, HelloRequest *request,
	       HelloReply *response,
	       grpc::ServerAsyncResponseWriter<HelloReply> *responder_,
	       void *tag)
{
	std::string prefix("Hello ");
	response->set_message(prefix + request->name());

	// And we are done! Let the gRPC runtime know we've finished, using the
	// memory address of this instance as the uniquely identifying tag for
	// the event.
	responder_->Finish(*response, Status::OK, tag);
}

void say_world(grpc::ServerContext *ctx, WorldRequest *request,
	       WorldReply *response,
	       grpc::ServerAsyncResponseWriter<WorldReply> *responder_,
	       void *tag)
{
	std::string prefix("World ");
	response->set_message(prefix + request->name());

	// And we are done! Let the gRPC runtime know we've finished, using the
	// memory address of this instance as the uniquely identifying tag for
	// the event.
	responder_->Finish(*response, Status::OK, tag);
}

int main(int argc, char** argv) {
	GrpcAsyncServer server("0.0.0.0:50051");

	// greeter
	auto greeter_sayhello =
	    [](Greeter::AsyncService *service, grpc::ServerContext *ctx,
	       HelloRequest *request,
	       grpc::ServerAsyncResponseWriter<HelloReply> *responder,
	       grpc::CompletionQueue *cq, grpc::ServerCompletionQueue *scq,
	       void *tag) {
		    service->RequestSayHello(ctx, request, responder, cq, scq,
					     tag);
	    };
	server.Register<Greeter, HelloRequest, HelloReply, 0>(greeter_sayhello,
							      say_hello);

	auto greeter_sayworld =
	    [](Greeter::AsyncService *service, grpc::ServerContext *ctx,
	       WorldRequest *request,
	       grpc::ServerAsyncResponseWriter<WorldReply> *responder,
	       grpc::CompletionQueue *cq, grpc::ServerCompletionQueue *scq,
	       void *tag) {
		    service->RequestSayWorld(ctx, request, responder, cq, scq,
					     tag);
	    };
	server.Register<Greeter, WorldRequest, WorldReply, 0>(greeter_sayworld,
							      say_world);

	// foo
	auto foo_sayhello =
	    [](Foo::AsyncService *service, grpc::ServerContext *ctx,
	       HelloRequest *request,
	       grpc::ServerAsyncResponseWriter<HelloReply> *responder,
	       grpc::CompletionQueue *cq, grpc::ServerCompletionQueue *scq,
	       void *tag) {
		    service->RequestSayHello(ctx, request, responder, cq, scq,
					     tag);
	    };
	server.Register<Foo, HelloRequest, HelloReply, 0>(foo_sayhello,
							  say_hello);

	auto foo_sayworld =
	    [](Foo::AsyncService *service, grpc::ServerContext *ctx,
	       WorldRequest *request,
	       grpc::ServerAsyncResponseWriter<WorldReply> *responder,
	       grpc::CompletionQueue *cq, grpc::ServerCompletionQueue *scq,
	       void *tag) {
		    service->RequestSayWorld(ctx, request, responder, cq, scq,
					     tag);
	    };
	server.Register<Foo, WorldRequest, WorldReply, 0>(foo_sayworld,
							  say_world);

	std::vector<std::thread> threads;
	for (auto i = 0; i < 2; ++i) {
		threads.emplace_back(&GrpcAsyncServer::Run, &server);
	}
	for (auto &thread : threads) {
		thread.join();
	}

	return 0;
}

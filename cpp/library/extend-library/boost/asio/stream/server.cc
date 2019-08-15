#include <iostream>
#include <memory>
using namespace std;

#include <boost/asio/local/stream_protocol.hpp>
#include <boost/asio/write.hpp>
using boost::asio::local::stream_protocol;

class Session final : public enable_shared_from_this<Session>
{
public:
	explicit Session(stream_protocol::socket &&socket) noexcept
	    : socket_(move(socket))
	{
		try {
			remote_endpoint_ = socket_.remote_endpoint();
		} catch (std::exception &e) {
			std::cerr << "Exception: " << e.what() << "\n";
		}
	}

	~Session()
	{
		cout << "Tuple(stream_protocol, " << socket_.local_endpoint()
		     << ", " << remote_endpoint_ << ") has been clsoed" << endl;
	}

	Session(const Session &) = delete;
	Session &operator=(const Session &) = delete;

	void Start() noexcept { read(); }

private:
	void read() noexcept
	{
		auto self(shared_from_this());
		socket_.async_read_some(
		    boost::asio::buffer(data_, kMaxLength),
		    [this, self](boost::system::error_code ec, size_t length) {
			    if (!ec) {
				    cout << "Receive data from "
					 << remote_endpoint_ << " => ";
				    cout.write(data_,
					       static_cast<streamsize>(length));
				    if (length > 0 &&
					data_[length - 1] != '\n') {
					    cout << '\n';
				    }
				    write(length);
				    return;
			    }
			    cout << remote_endpoint_ << " leave in read"
				 << endl;
		    });
	}

	void write(size_t length) noexcept
	{
		auto self(shared_from_this());
		boost::asio::async_write(
		    socket_, boost::asio::buffer(data_, length),
		    [this, self](boost::system::error_code ec,
				 size_t /* length */) {
			    if (!ec) {
				    read();
				    return;
			    }
			    cout << remote_endpoint_ << " leave in write"
				 << endl;
		    });
	}

private:
	enum { kMaxLength = 1024 };
	char data_[kMaxLength];

	stream_protocol::socket socket_;
	stream_protocol::endpoint remote_endpoint_;
};

class Server final
{
public:
	Server(boost::asio::io_context &io_context, const std::string &file)
	    : acceptor_(io_context, stream_protocol::endpoint(file))
	{
	}

	~Server()
	{
		cout << "Server(" << acceptor_.local_endpoint()
		     << ") has been closed" << endl;
	}

	Server(const Server&) = delete;
	Server& operator=(const Server&) = delete;

	void Run() noexcept
	{
		cout << "Listen on: " << acceptor_.local_endpoint() << endl;
		accept();
	}

private:
	void accept() noexcept
	{
		acceptor_.async_accept([=](boost::system::error_code ec,
					   stream_protocol::socket &&socket) {
			if (!ec) {
				make_shared<Session>(move(socket))->Start();
			}
			accept();
		});
	}

private:
	stream_protocol::acceptor acceptor_;
};

int main(int argc, char *argv[])
{
	try {
		if (argc < 2) {
			cerr << "Usage: " << argv[0] << " [file]" << endl;
			std::cerr
			    << "*** WARNING: existing file is removed ***\n";

			return EXIT_FAILURE;
		}

		boost::asio::io_context io_context(1);
		std::remove(argv[1]);
		Server server(io_context, argv[1]);
		server.Run();
		io_context.run();
	} catch (exception &e) {
		cerr << "Exception: " << e.what() << endl;
	}

	return 0;
}

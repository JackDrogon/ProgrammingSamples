#include <cstdlib>
#include <iostream>
#include <memory>
#include <utility>

#include <boost/asio.hpp>

using boost::asio::ip::tcp;

class Session : public std::enable_shared_from_this<Session>
{
public:
	explicit Session(tcp::socket socket) : socket_(std::move(socket)) {}

	void Start() { read(); }

private:
	void read()
	{
		auto self(shared_from_this());

		socket_.async_read_some(
		    boost::asio::buffer(data_, kMaxLength),
		    [this, self](boost::system::error_code ec,
				 std::size_t length) {
			    if (!ec) {
				    write(length);
			    }
		    });
	}

	void write(std::size_t length)
	{
		auto self(shared_from_this());

		boost::asio::async_write(
		    socket_, boost::asio::buffer(data_, length),
		    [this, self](boost::system::error_code ec,
				 std::size_t /*length*/) {
			    if (!ec) {
				    read();
			    }
		    });
	}

private:
	enum { kMaxLength = 1024 };
	char data_[kMaxLength];

	tcp::socket socket_;
};

class Server
{
public:
	explicit Server(boost::asio::io_context &io_context,
			unsigned short port)
	    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port)),
	      socket_(io_context)
	{
	}

	void Start() { accept(); }

private:
	void accept()
	{
		acceptor_.async_accept(
		    socket_, [this](boost::system::error_code ec) {
			    if (!ec) {
				    std::make_shared<Session>(
					std::move(socket_))
					->Start();
			    }

			    accept();
		    });
	}

	tcp::acceptor acceptor_;
	tcp::socket socket_;
};

int main(int argc, char *argv[])
{
	try {
		if (argc != 2) {
			std::cerr << "Usage: " << argv[0] << " <port>\n";
			return 1;
		}

		boost::asio::io_context io_context(1);

		Server server(io_context,
			      static_cast<unsigned short>(std::atoi(argv[1])));
		server.Start();

		io_context.run();
	} catch (std::exception &e) {
		std::cerr << "Exception: " << e.what() << "\n";
	}

	return 0;
}

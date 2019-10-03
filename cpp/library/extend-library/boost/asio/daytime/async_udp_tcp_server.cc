#include <functional>
#include <iostream>
#include <string>
using namespace std;
using namespace std::placeholders;

#include <boost/asio/io_context.hpp>
#include <boost/asio/ip/tcp.hpp>
#include <boost/asio/ip/udp.hpp>
#include <boost/asio/write.hpp>
using boost::asio::ip::tcp;
using boost::asio::ip::udp;

string make_daytime_string()
{
	time_t now = time(nullptr);
	return ctime(&now);
}

class TCPSession : public enable_shared_from_this<TCPSession>
{
public:
	TCPSession(tcp::socket &&socket) : socket_(std::move(socket)) {}

	void Start()
	{
		message_ = make_daytime_string();

		auto self(shared_from_this());
		boost::asio::async_write(
		    socket_, boost::asio::buffer(message_),
		    [self = std::move(self)](boost::system::error_code ec,
					     std::size_t /*length*/) {
			    if (ec) {
				    cout << "Error: " << ec << endl;
			    }
		    });
	}

private:
	tcp::socket socket_;
	string message_;
};

class TCPDaytimeServer
{
public:
	TCPDaytimeServer(boost::asio::io_context &io_context,
			 unsigned short port)
	    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port))
	{
	}

	void Start() { accept(); }

private:
	void accept()
	{
		acceptor_.async_accept([this](
					   const boost::system::error_code &ec,
					   tcp::socket &&socket) {
			if (!ec) {
				std::make_shared<TCPSession>(std::move(socket))
				    ->Start();
			}
			accept();
		});
	}

private:
	tcp::acceptor acceptor_;
};

class UDPDaytimeServer
{
public:
	UDPDaytimeServer(boost::asio::io_context &io_context,
			 const unsigned short port)
	    : socket_(io_context, udp::endpoint(udp::v4(), port))
	{
	}

	void Start() { receive(); }

private:
	void receive()
	{
		socket_.async_receive_from(
		    boost::asio::buffer(recv_buffer_), remote_endpoint_,
		    bind(&UDPDaytimeServer::send, this, _1, _2));
	}

	void send(const boost::system::error_code &ec,
		  std::size_t /*bytes_transferred*/)
	{
		// NOTE: use move buffer: such as string, keepalive in lambda
		// if sso, e...
		if (!ec) {
			auto message = make_daytime_string();
			socket_.async_send_to(
			    boost::asio::buffer(message), remote_endpoint_,
			    [](const boost::system::error_code &, std::size_t) {
			    });

			receive();
		}
	}

private:
	udp::socket socket_;
	udp::endpoint remote_endpoint_;
	array<char, 1> recv_buffer_;
};

int main(int argc, char *argv[])
{
	unsigned short port = 54321;

	if (argc > 1) {
		port = static_cast<unsigned short>(atoi(argv[1]));
	}

	try {
		boost::asio::io_context io_context(1);

		cout << "Listen on :" << port << endl;
		TCPDaytimeServer daytime_server(io_context, port);
		daytime_server.Start();
		UDPDaytimeServer udp_daytime_server(io_context, port);
		udp_daytime_server.Start();

		io_context.run();

	} catch (exception &e) {
		cerr << e.what() << endl;
	}

	return 0;
}

#include <array>
#include <functional>
#include <iostream>
using namespace std;
using namespace std::placeholders;

#include <boost/asio/io_context.hpp>
#include <boost/asio/ip/udp.hpp>
#include <boost/asio/placeholders.hpp>
using boost::asio::ip::udp;

string make_daytime_string()
{
	using namespace std; // For time_t, time and ctime;
	time_t now = time(nullptr);
	return ctime(&now);
}

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
		boost::asio::io_context io_context;
		cout << "Listen on :" << port << endl;
		UDPDaytimeServer server(io_context, port);
		server.Start();
		io_context.run();
	} catch (std::exception &e) {
		std::cerr << e.what() << std::endl;
	}

	return 0;
}

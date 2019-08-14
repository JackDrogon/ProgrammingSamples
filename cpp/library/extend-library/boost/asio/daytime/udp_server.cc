#include <array>
#include <iostream>
using namespace std;

#include <boost/asio/connect.hpp>
#include <boost/asio/io_context.hpp>
#include <boost/asio/ip/udp.hpp>
using boost::asio::ip::udp;

string make_daytime_string()
{
	using namespace std; // For time_t, time and ctime;
	time_t now = time(nullptr);
	return ctime(&now);
}

int main(int argc, char *argv[])
{
	unsigned short port = 54321;

	if (argc > 1) {
		port = static_cast<unsigned short>(atoi(argv[1]));
	}

	try {
		boost::asio::io_context io_context;

		cout << "Listen on :" << port << endl;
		udp::socket socket(io_context, udp::endpoint(udp::v4(), port));

		for (;;) {
			array<char, 1> recv_buf;
			udp::endpoint remote_endpoint;

			boost::system::error_code _ignored_error;
			socket.receive_from(boost::asio::buffer(recv_buf),
					    remote_endpoint);

			auto message = make_daytime_string();

			socket.send_to(boost::asio::buffer(message),
				       remote_endpoint, 0, _ignored_error);
		}
	} catch (exception &e) {
		cerr << e.what() << endl;
	}

	return 0;
}

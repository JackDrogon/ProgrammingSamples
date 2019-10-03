#include <array>
#include <iostream>
using namespace std;

#include <boost/asio/connect.hpp>
#include <boost/asio/io_context.hpp>
#include <boost/asio/ip/udp.hpp>
using boost::asio::ip::udp;

int main(int argc, char *argv[])
{
	try {
		if (argc != 2) {
			cerr << "Usage: " << argv[0] << " <host>" << endl;
			return 1;
		}

		boost::asio::io_context io_context;

		// 1. Resolve host
		udp::resolver resolver(io_context);
		udp::endpoint receiver_endpoint =
		    *resolver.resolve(udp::v4(), argv[1], "daytime").begin();

		// 2. Open udp socket
		udp::socket socket(io_context);
		socket.open(udp::v4());

		array<char, 1> send_buf = {{0}};
		// 3. Send
		socket.send_to(boost::asio::buffer(send_buf),
			       receiver_endpoint);

		array<char, 128> recv_buf;
		udp::endpoint sender_endpoint;
		// 4. Receive
		auto len = socket.receive_from(boost::asio::buffer(recv_buf),
					       sender_endpoint);

		cout.write(recv_buf.data(), len);
	} catch (exception &e) {
		cerr << e.what() << endl;
	}

	return 0;
}

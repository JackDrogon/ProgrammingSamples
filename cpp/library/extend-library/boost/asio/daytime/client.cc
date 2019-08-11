#include <array>
#include <iostream>
using namespace std;

#include <boost/asio/connect.hpp>
#include <boost/asio/io_context.hpp>
#include <boost/asio/ip/tcp.hpp>
using boost::asio::ip::tcp;

int main(int argc, char *argv[])
{
	try {
		if (argc != 2) {
			cerr << "Usage: " << argv[0] << " <host>" << endl;
			return 1;
		}

		boost::asio::io_context io_context;

		// 1. Resolve host
		tcp::resolver resolver(io_context);
		tcp::resolver::results_type endpoints =
		    resolver.resolve(argv[1], "daytime");

		// 2. Connect to endpoints
		tcp::socket socket(io_context);
		// TODO: => socket = io_context.connect(endpoints)
		boost::asio::connect(socket, endpoints);

		for (;;) {
			array<char, 128> buf;
			boost::system::error_code error;

			auto len =
			    socket.read_some(boost::asio::buffer(buf), error);

			if (error == boost::asio::error::eof) {
				break; // Connection closed cleanly by peer.
			} else if (error) {
				throw boost::system::system_error(
				    error); // Some other error.
			}

			cout.write(buf.data(), len);
		}
	} catch (exception &e) {
		cerr << e.what() << endl;
	}

	return 0;
}

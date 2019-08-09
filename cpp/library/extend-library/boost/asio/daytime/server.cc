#include <iostream>
#include <string>
using namespace std;

#include <boost/asio/io_context.hpp>
#include <boost/asio/ip/tcp.hpp>
#include <boost/asio/write.hpp>

using boost::asio::ip::tcp;

string make_daytime_string()
{
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
		boost::asio::io_context io_context(1);

		tcp::acceptor acceptor(io_context,
				       tcp::endpoint(tcp::v4(), port));
		cout << "Listen on :" << port << endl;

		for (;;) {
			tcp::socket socket(io_context);
			acceptor.accept(socket);

			auto message = make_daytime_string();

			boost::system::error_code _ignored_error;
			boost::asio::write(socket, boost::asio::buffer(message),
					   _ignored_error);
		}
	} catch (exception &e) {
		cerr << e.what() << endl;
	}

	return 0;
}

#include <array>
#include <cstdlib>
#include <iostream>
using namespace std;

#include <boost/asio/local/stream_protocol.hpp>
using boost::asio::local::stream_protocol;
constexpr int kMaxLength = 1024;

int main(int argc, char *argv[])
{

	if (argc != 2) {
		cerr << "Usage: " << argv[0] << " <file>\n";
		return 1;
	}

	try {
		char request[kMaxLength];
		char reply[kMaxLength];

		// TODO: FAQ
		// stream_protocol::iostream client(
		//     stream_protocol::endpoint(argv[1]));
		stream_protocol::iostream client{
		    stream_protocol::endpoint(argv[1])};
		if (!client) {
			cerr
			    << "Unable to connect: " << client.error().message()
			    << endl;
			return EXIT_FAILURE;
		}

		cout << "Enter message: ";
		cin.getline(request, kMaxLength);
		auto request_length = strlen(request);
		client << request;

		client.read(reply, request_length);
		cout << "Reply is: ";
		cout.write(reply, request_length);
		cout << "\n";

	} catch (exception &e) {
		cerr << "Exception: " << e.what() << "\n";
	}

	return 0;
}

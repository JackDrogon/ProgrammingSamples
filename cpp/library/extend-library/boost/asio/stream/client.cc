#include <iostream>
#include <array>
using namespace std;

#include <boost/asio/io_context.hpp>
#include <boost/asio/local/stream_protocol.hpp>
#include <boost/asio/read.hpp>
#include <boost/asio/write.hpp>
using boost::asio::local::stream_protocol;
constexpr int kMaxLength = 1024;

int main(int argc, char *argv[])
{

	if (argc != 2) {
		std::cerr << "Usage: " << argv[0] << " <file>\n";
		return 1;
	}

	try {
		boost::asio::io_context io_context(1);
		array<char, kMaxLength> request;
		array<char, kMaxLength> reply;

		stream_protocol::socket socket(io_context);
		socket.connect(stream_protocol::endpoint(argv[1]));

		std::cout << "Enter message: ";
		std::cin.getline(request.data(), kMaxLength);
		auto request_length = strlen(request.data());
		boost::asio::write(
		    socket, boost::asio::buffer(request, request_length));

		auto reply_length = boost::asio::read(
		    socket, boost::asio::buffer(reply, request_length));
		std::cout << "Reply is: ";
		std::cout.write(reply.data(), reply_length);
		std::cout << "\n";

	} catch (std::exception &e) {
		std::cerr << "Exception: " << e.what() << "\n";
	}

	return 0;
}

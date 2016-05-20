#include <cstdlib>
#include <iostream>
#include <thread>
#include <utility>
#include "asio.hpp"

using asio::ip::tcp;

const int max_length = 1024;

void session(tcp::socket sock)
{
	try {
		for (;;) {
			char data[max_length];

			asio::error_code error;
			size_t length =
			    sock.read_some(asio::buffer(data), error);
			if (error == asio::error::eof)
				break; // Connection closed cleanly by peer.
			else if (error)
				throw asio::system_error(
				    error); // Some other error.

			asio::write(sock, asio::buffer(data, length));
		}
	} catch (std::exception &e) {
		std::cerr << "Exception in thread: " << e.what() << "\n";
	}
}

void server(asio::io_service &io_service, unsigned short port)
{
	tcp::acceptor a(io_service, tcp::endpoint(tcp::v4(), port));
	for (;;) {
		tcp::socket sock(io_service);
		a.accept(sock);
		std::thread(session, std::move(sock)).detach();
	}
}

int main(int argc, char *argv[])
{
	try {
		if (argc != 2) {
			std::cerr << "Usage: "<< argv[0] << " <port>\n";
			return 1;
		}

		asio::io_service io_service;

		server(io_service, std::atoi(argv[1]));
	} catch (std::exception &e) {
		std::cerr << "Exception: " << e.what() << "\n";
	}

	return 0;
}

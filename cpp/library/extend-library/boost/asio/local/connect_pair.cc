#include <array>
#include <iostream>
#include <memory>
#include <thread>
using namespace std;

#include <boost/asio/local/connect_pair.hpp>
#include <boost/asio/local/stream_protocol.hpp>
#include <boost/asio/read.hpp>
#include <boost/asio/write.hpp>
using boost::asio::local::stream_protocol;

class UppercaseFilter
{
public:
	UppercaseFilter(boost::asio::io_context &io_context)
	    : socket_(io_context)
	{
	}

	auto &Socket() { return socket_; }

	void Start() { read(); }

private:
	void read()
	{
		socket_.async_read_some(
		    boost::asio::buffer(data_),
		    [this](const boost::system::error_code &ec, size_t size) {
			    if (ec) {
				    throw boost::system::system_error(ec);
			    }
			    // Compute result.
			    for (std::size_t i = 0; i < size; ++i) {
				    data_[i] = std::toupper(data_[i]);
			    }

			    // Send result.
			    write(size);
		    });
	}

	void write(size_t size)
	{
		boost::asio::async_write(
		    socket_, boost::asio::buffer(data_, size),
		    [this](const boost::system::error_code &ec,
			   size_t /* size */) {
			    if (ec) {
				    throw boost::system::system_error(ec);
			    }

			    read();
		    });
	}

private:
	stream_protocol::socket socket_;
	array<char, 512> data_;
};

int main()
{
	try {
		boost::asio::io_context io_context;

		// Create filter and establish a connection to it.
		UppercaseFilter filter(io_context);
		stream_protocol::socket socket(io_context);
		boost::asio::local::connect_pair(socket, filter.Socket());
		filter.Start();

		// The io_context runs in a background thread to perform
		// filtering.
		thread thread([&] {
			try {
				io_context.run();
			} catch (std::exception &e) {
				std::cerr << "Exception in thread: " << e.what()
					  << "\n";
				std::exit(1);
			}
		});

		for (;;) {
			// Collect request from user.
			std::cout << "Enter a string: ";
			std::string request;
			std::getline(std::cin, request);

			// Send request to filter.
			boost::asio::write(socket,
					   boost::asio::buffer(request));

			// Wait for reply from filter.
			std::vector<char> reply(request.size());
			boost::asio::read(socket, boost::asio::buffer(reply));

			// Show reply to user.
			std::cout << "Result: ";
			std::cout.write(&reply[0], request.size());
			std::cout << std::endl;
		}
	} catch (std::exception &e) {
		std::cerr << "Exception: " << e.what() << "\n";
		std::exit(1);
	}
}

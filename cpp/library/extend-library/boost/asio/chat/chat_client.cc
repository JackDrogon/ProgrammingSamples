#include <cstdlib>
#include <deque>
#include <iostream>
#include <thread>

#include <boost/asio.hpp>

#include "chat_message.hh"

using boost::asio::ip::tcp;


class ChatClient
{
public:
	ChatClient(boost::asio::io_context &io_context,
		   const tcp::resolver::results_type &endpoints)
	    : io_context_(io_context), socket_(io_context)
	{
		connect(endpoints);
	}

	void Write(const ChatMessage &msg)
	{
		// NOTE: POST 保证了lambda是在io_context线程中执行的
		boost::asio::post(io_context_, [this, msg]() {
			bool write_in_progress = !write_msgs_.empty();
			write_msgs_.push_back(msg);
			if (!write_in_progress) {
				write();
			}
		});
	}

	void Close()
	{
		boost::asio::post(io_context_, [this]() { socket_.close(); });
	}

private:
	void connect(const tcp::resolver::results_type &endpoints)
	{
		// TODO: endpoints???, more than 1
		boost::asio::async_connect(
		    socket_, endpoints,
		    [this](boost::system::error_code ec, tcp::endpoint) {
			    if (!ec) {
				    readHeader();
			    }
		    });
	}

	void readHeader()
	{
		boost::asio::async_read(
		    socket_,
		    boost::asio::buffer(read_msg_.data(),
					ChatMessage::kHeaderLength),
		    [this](boost::system::error_code ec,
			   std::size_t /*length*/) {
			    if (!ec && read_msg_.DecodeHeader()) {
				    readBody();
			    } else {
				    socket_.close();
			    }
		    });
	}

	void readBody()
	{
		boost::asio::async_read(
		    socket_,
		    boost::asio::buffer(read_msg_.body(),
					read_msg_.body_length()),
		    [this](boost::system::error_code ec,
			   std::size_t /*length*/) {
			    if (!ec) {
				    std::cout.write(read_msg_.body(),
						    read_msg_.body_length());
				    std::cout << "\n";
				    readHeader();
			    } else {
				    socket_.close();
			    }
		    });
	}

	void write()
	{
		boost::asio::async_write(
		    socket_,
		    boost::asio::buffer(write_msgs_.front().data(),
					write_msgs_.front().length()),
		    [this](boost::system::error_code ec,
			   std::size_t /*length*/) {
			    if (!ec) {
				    write_msgs_.pop_front();
				    if (!write_msgs_.empty()) {
					    write();
				    }
			    } else {
				    // FIXME(ERROR): may be double close
				    socket_.close();
			    }
		    });
	}

private:
	using ChatMessageQueue = std::deque<ChatMessage>;

	boost::asio::io_context &io_context_;
	tcp::socket socket_;
	ChatMessage read_msg_;
	ChatMessageQueue write_msgs_;
};

int main(int argc, char *argv[])
{
	try {
		if (argc != 3) {
			std::cerr << "Usage: " << argv[0] << " <host> <port>\n";
			return EXIT_FAILURE;
		}

		boost::asio::io_context io_context;

		tcp::resolver resolver(io_context);
		// resolve ip:port
		auto endpoints = resolver.resolve(argv[1], argv[2]);
		ChatClient client(io_context, endpoints);

		std::thread t([&io_context]() { io_context.run(); });

		char line[ChatMessage::kMaxBodyLength + 1];
		// TODO: use async stream
		while (
		    std::cin.getline(line, ChatMessage::kMaxBodyLength + 1)) {
			ChatMessage msg;
			msg.body_length(std::strlen(line));
			std::memcpy(msg.body(), line, msg.body_length());
			msg.EecodeHeader();
			client.Write(msg);
		}

		client.Close();
		t.join();
	} catch (std::exception &e) {
		std::cerr << "Exception: " << e.what() << "\n";
	}

	return 0;
}

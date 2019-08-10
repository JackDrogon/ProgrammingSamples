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

class Session : public enable_shared_from_this<Session>
{
public:
	Session(tcp::socket &&socket) : socket_(std::move(socket)) {}

	void Start()
	{
		message_ = make_daytime_string();

		auto self(shared_from_this());
		boost::asio::async_write(
		    socket_, boost::asio::buffer(message_),
		    [this, self](boost::system::error_code ec,
				 std::size_t /*length*/) {
			    if (ec) {
				    cout << "Error: " << ec << endl;
			    }
		    });
	}

private:
	tcp::socket socket_;
	string message_;
};

class DaytimeServer
{
public:
	DaytimeServer(boost::asio::io_context &io_context, unsigned short port)
	    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port))
	{
	}

	void Start() { accept(); }

private:
	void accept()
	{
		acceptor_.async_accept(
		    [this](const boost::system::error_code &ec,
			   tcp::socket &&socket) {
			    if (!ec) {
				    std::make_shared<Session>(std::move(socket))
					->Start();
			    }
			    accept();
		    });
	}

private:
	tcp::acceptor acceptor_;
};

int main(int argc, char *argv[])
{
	unsigned short port = 54321;

	if (argc > 1) {
		port = static_cast<unsigned short>(atoi(argv[1]));
	}

	try {
		boost::asio::io_context io_context(1);

		cout << "Listen on :" << port << endl;
		DaytimeServer daytimer_server(io_context, port);
		daytimer_server.Start();

		io_context.run();

	} catch (exception &e) {
		cerr << e.what() << endl;
	}

	return 0;
}

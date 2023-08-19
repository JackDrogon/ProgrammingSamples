#include <iostream>
using namespace std;

#include <boost/asio.hpp>
namespace asio = boost::asio;
using boost::asio::ip::tcp;

class EchoServer
{
public:
	EchoServer(asio::io_context &io_context, uint16_t port)
	    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port))
	{
	}

	~EchoServer()
	{
		cout << "Server(" << acceptor_.local_endpoint()
		     << ") has been closed" << endl;
	}
	EchoServer(const EchoServer &) = delete;
	EchoServer &operator=(const EchoServer &) = delete;

	void Run()
	{
		acceptor_.async_accept(
		    [=](boost::system::error_code ec, tcp::socket socket) {
			    if (!ec) {
			    }
		    });
	}

private:
	tcp::acceptor acceptor_;
};

int main()
{
	return 0;
}

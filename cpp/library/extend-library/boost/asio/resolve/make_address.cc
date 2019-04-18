#include <boost/asio.hpp>
#include <iostream>
using namespace std;
using boost::asio::ip::tcp;

int main(int argc, char *argv[])
{
	boost::asio::io_context io_context;

	boost::system::error_code ec;
	boost::asio::ip::make_address(argv[1], ec);
	if (ec) {
		cout << ec.message() << endl;
	} else {
		cout << "OK" << endl;
	}
}

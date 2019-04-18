#include <boost/asio.hpp>
#include <iostream>
#include <string>
using namespace std;
using boost::asio::ip::tcp;

int main(int argc, char *argv[])
{
	boost::asio::io_context io_context;

	boost::system::error_code ec;
	tcp::resolver resolver(io_context);

	string address = argv[1];
	auto end = address.find_first_of(':');

	auto endpoints =
	    resolver.resolve(address.substr(0, end),
			     address.substr(end + 1, address.size()), ec);
	if (ec) {
		cout << ec.message() << endl;
		return 0;
	}

	for (auto endpoint : endpoints) {
		cout << endpoint.endpoint() << endl;
	}
}

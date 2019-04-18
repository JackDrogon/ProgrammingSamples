#include <iostream>
using namespace std;

#include <boost/asio/ip/host_name.hpp>

int main()
{
	cout << boost::asio::ip::host_name() << endl;

	return 0;
}

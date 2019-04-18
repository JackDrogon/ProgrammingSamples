#include <iostream>
using namespace std;

#include <boost/asio.hpp>
using boost::asio::ip::tcp;

int main(int argc, char *argv[])
{
	try {
		if (argc < 2) {
			cerr << "Usage: " << argv[0] << " [address]" << endl;
			return EXIT_FAILURE;
		}

		boost::asio::io_context io_context;
		tcp::resolver resolver(io_context);
		for (auto &address :
		     resolver.resolve(tcp::resolver::query(argv[1]))) {
			cout << address.endpoint() << endl;
		}
	} catch (exception &e) {
		cerr << "Exception: " << e.what() << endl;
	}

	return 0;
}

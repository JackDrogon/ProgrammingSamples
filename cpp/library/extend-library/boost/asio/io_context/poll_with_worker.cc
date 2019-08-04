#include <iostream>
#include <boost/asio.hpp>

using namespace std;

int main()
{
	boost::asio::io_context io_context(1);
	boost::asio::io_context::work worker(io_context);

	for (int i = 0; i < 5; ++i) {
		io_context.poll();
		cout << "Num: " << i << endl;
	}
	io_context.run();

	return 0;
}

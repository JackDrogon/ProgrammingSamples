#include <iostream>
#include <boost/asio.hpp>

using namespace std;

int main()
{
	boost::asio::io_context io_context(1);
	// boost::asio::executor_work_guard<boost::asio::io_context::executor_type>
	auto worker = boost::asio::make_work_guard(io_context);

	for (int i = 0; i < 5; ++i) {
		io_context.poll();
		cout << "Num: " << i << endl;
	}
	io_context.run();

	return 0;
}

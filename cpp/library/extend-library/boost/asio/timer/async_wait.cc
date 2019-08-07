#include <chrono>
#include <iostream>
using namespace std;
using namespace std::chrono_literals;

#include <boost/asio/io_context.hpp>
#include <boost/asio/steady_timer.hpp>

int main()
{
	boost::asio::io_context io_context;
	boost::asio::steady_timer timer(io_context, 1s);

	{
		auto start = std::chrono::steady_clock::now();
		timer.async_wait([=](const boost::system::error_code &) {
			cout << "Run timer completion function, distance "
			     << std::chrono::duration_cast<
				    std::chrono::milliseconds>(
				    std::chrono::steady_clock::now() - start)
				    .count()
			     << "us" << endl;
		});
	}
	io_context.run();

	return 0;
}

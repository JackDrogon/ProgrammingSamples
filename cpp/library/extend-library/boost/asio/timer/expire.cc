#include <chrono>
#include <functional>
#include <iostream>
using namespace std;
using namespace std::chrono_literals;

#include <boost/asio/io_context.hpp>
#include <boost/asio/steady_timer.hpp>

int main()
{
	boost::asio::io_context io_context(1);

	int count = 0;
	boost::asio::steady_timer timer(io_context, 1s);

	{
		auto start = std::chrono::steady_clock::now();
		function<void(const boost::system::error_code &)> wait_func;
		wait_func = [&, start](const boost::system::error_code &) {
			if (count++ >= 5) {
				return;
			}
			cout << "Count is " << count << ", distance "
			     << std::chrono::duration_cast<
				    std::chrono::milliseconds>(
				    std::chrono::steady_clock::now() - start)
				    .count()
			     << "us" << endl;
			timer.expires_at(timer.expiry() + 1s);
			timer.async_wait(wait_func);
		};
		timer.async_wait(wait_func);
	}
	io_context.run();
	cout << "Final count is " << count << endl;

	return 0;
}

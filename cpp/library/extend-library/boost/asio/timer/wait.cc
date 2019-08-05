#include <chrono>
#include <iostream>
using namespace std;
using namespace std::chrono_literals;

#include <boost/asio.hpp>

int main()
{
	boost::asio::io_context io_context;

	boost::asio::steady_timer timer(io_context, 1s);
	{
		std::chrono::steady_clock::time_point start =
		    std::chrono::steady_clock::now();
		timer.wait();
		cout << "Use: "
		     << std::chrono::duration_cast<std::chrono::milliseconds>(
			    std::chrono::steady_clock::now() - start)
			    .count()
		     << "us.\n";
	}

	cout << "Hello, world!" << endl;

	return 0;
}

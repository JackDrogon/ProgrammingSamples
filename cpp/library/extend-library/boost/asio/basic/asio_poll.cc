#include <iostream>
#include <boost/asio.hpp>

using namespace std;

int main()
{
	boost::asio::io_context io_context(1);

	std::chrono::steady_clock::time_point start =
	    std::chrono::steady_clock::now();
	for (int i = 0; i < 5; ++i) {
		io_context.poll();
		cout << "Now: "
		     << std::chrono::duration_cast<std::chrono::milliseconds>(
			    std::chrono::steady_clock::now() - start)
			    .count()
		     << "us.\n";
		cout << "Num: " << i << "\n";
	}

	return 0;
}

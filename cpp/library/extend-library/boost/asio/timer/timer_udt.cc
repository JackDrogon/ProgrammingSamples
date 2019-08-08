#include <chrono>
#include <functional>
#include <iostream>
using namespace std;
using namespace std::chrono_literals;

#include <boost/asio/io_context.hpp>
#include <boost/asio/steady_timer.hpp>

class Printer
{
public:
	Printer(boost::asio::io_context &io_context) : timer_(io_context, 1s)
	{
		timer_.async_wait(bind(&Printer::print, this));
	}

	~Printer() { cout << "Final count is " << count_ << endl; }

private:
	void print()
	{
		if (count_ > 5) {
			return;
		}

		cout << "Count is " << count_++ << ", distance "
		     << std::chrono::duration_cast<std::chrono::milliseconds>(
			    std::chrono::steady_clock::now() - start_)
			    .count()
		     << "us" << endl;
		timer_.expires_after(2s);
		timer_.async_wait(bind(&Printer::print, this));
	}

private:
	boost::asio::steady_timer timer_;
	std::chrono::steady_clock::time_point start_{
	    std::chrono::steady_clock::now()};
	int count_{0};
};

int main()
{
	boost::asio::io_context io_context;
	Printer printer(io_context);
	io_context.run();
	return 0;
}

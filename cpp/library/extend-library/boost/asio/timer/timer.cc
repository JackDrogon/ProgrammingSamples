#include <chrono>
#include <functional>
#include <iostream>
#include <thread>
using namespace std;
using namespace std::chrono_literals;

#include <boost/asio.hpp>

class Printer
{
public:
	Printer(boost::asio::io_context &io)
	    : strand_(boost::asio::make_strand(io)), timer1_(io, 1s),
	      timer2_(io, 1s)
	{
		// ignore error_code
		timer1_.async_wait(boost::asio::bind_executor(
		    strand_, bind(&Printer::print1, this)));
		timer2_.async_wait(boost::asio::bind_executor(
		    strand_, bind(&Printer::print2, this)));
	}

	~Printer() { cout << "Final count is " << count_ << endl; }

	void print1()
	{
		if (count_ < 10) {
			cout << "Timer 1: " << count_ << endl;
			++count_;

			timer1_.expires_after(1s);
			timer1_.async_wait(boost::asio::bind_executor(
			    strand_, bind(&Printer::print1, this)));
		}
	}

	void print2()
	{
		if (count_ < 10) {
			cout << "Timer 2: " << count_ << endl;
			++count_;

			timer2_.expires_at(timer2_.expiry() + 1s);
			timer2_.async_wait(boost::asio::bind_executor(
			    strand_, bind(&Printer::print2, this)));
		}
	}

private:
	boost::asio::strand<boost::asio::io_context::executor_type> strand_;
	boost::asio::steady_timer timer1_;
	boost::asio::steady_timer timer2_;
	int count_{0};
};

int main()
{
	boost::asio::io_context io;
	Printer p(io);
	// NOTE: boost::asio::io_context::run has overload functions, such as
	// run(), run(1)
	// thread th(&boost::asio::io_context::run, &io); thread
	thread th([&io] { io.run(); });
	io.run();
	th.join();

	return 0;
}

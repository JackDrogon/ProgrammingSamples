#include <ctime>
#include <chrono>
#include <iostream>
using namespace std;
using namespace std::chrono_literals;

#include <boost/asio.hpp>

// A custom implementation of the Clock concept from the standard C++ library.
struct time_t_clock
{
	// The duration type.
	using duration = chrono::steady_clock::duration;

	// The duration's underlying arithmetic representation.
	using rep = duration::rep;

	// The ratio representing the duration's tick period.
	using period = duration::period;

	// An absolute time point represented using the clock.
	using time_point = chrono::time_point<time_t_clock>;

	// The clock is not monotonically increasing.
	static constexpr bool is_steady = false;

	// Get the current time.
	static time_point now() noexcept
	{
		return time_point() + chrono::seconds(time(nullptr));
	}
};

// The boost::asio::basic_waitable_timer template accepts an optional WaitTraits
// template parameter. The underlying time_t clock has one-second granularity,
// so these traits may be customised to reduce the latency between the clock
// ticking over and a wait operation's completion. When the timeout is near
// (less than one second away) we poll the clock more frequently to detect the
// time change closer to when it occurs. The user can select the appropriate
// trade off between accuracy and the increased CPU cost of polling. In extreme
// cases, a zero duration may be returned to make the timers as accurate as
// possible, albeit with 100% CPU usage.
struct time_t_wait_traits
{
	// Determine how long until the clock should be next polled to determine
	// whether the duration has elapsed.
	static time_t_clock::duration
	to_wait_duration(const time_t_clock::duration &d)
	{
		if (d > 1s) {
			return d - 1s;
		} else if (d > 0s) {
			return chrono::milliseconds(10);
		} else {
			return 0s;
		}
	}

	// Determine how long until the clock should be next polled to determine
	// whether the absoluate time has been reached.
	static time_t_clock::duration
	to_wait_duration(const time_t_clock::time_point &t)
	{
		return to_wait_duration(t - time_t_clock::now());
	}
};

using time_t_timer =
    boost::asio::basic_waitable_timer<time_t_clock, time_t_wait_traits>;

int main()
{
	try {
		boost::asio::io_context io_context;

		time_t_timer timer(io_context);

		timer.expires_after(5s);
		cout << "Starting synchronous wait\n";
		timer.wait();
		cout << "Finished synchronous wait\n";

		timer.expires_after(5s);
		cout << "Starting asynchronous wait\n";
		timer.async_wait(
		    [](const boost::system::error_code & /*error*/) {
			    cout << "timeout\n";
		    });
		io_context.run();
		cout << "Finished asynchronous wait\n";
	} catch (exception &e) {
		cout << "Exception: " << e.what() << "\n";
	}

	return 0;
}

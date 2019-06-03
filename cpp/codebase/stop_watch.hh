#pragma once
#include <chrono>

namespace archimedes ::time
{

template <typename ClockType = std::chrono::steady_clock> class StopWatch
{
public:
	using clock = ClockType;
	using nanoseconds = std::chrono::nanoseconds;
	using microseconds = std::chrono::microseconds;
	using milliseconds = std::chrono::milliseconds;
	using seconds = std::chrono::seconds;

public:
	StopWatch() : start_(clock::now())
	{
		static_assert(std::chrono::steady_clock::is_steady,
			      "Serious OS/C++ library issues. Steady clock is "
			      "not steady");
		// FYI:  This would fail
		// static_assert(std::chrono::high_resolution_clock::is_steady(),
		// "High Resolution Clock is NOT steady on CentOS?!");
	}
	StopWatch(const StopWatch &other) : start_(other.start_) {}

	/// @return StopWatch::StopWatch&  - assignment operator.
	StopWatch &operator=(const StopWatch &rhs)
	{
		start_ = rhs.start_;
		return *this;
	}

	/// @return the elapsed nanoseconds since start
	auto ElapsedNs() const
	{
		return std::chrono::duration_cast<nanoseconds>(clock::now() -
							       start_)
		    .count();
	}

	/// @return the elapsed microseconds since start
	auto ElapsedUs() const
	{
		return std::chrono::duration_cast<microseconds>(clock::now() -
								start_)
		    .count();
	}

	/// @return the elapsed milliseconds since start
	auto ElapsedMs() const
	{
		return std::chrono::duration_cast<milliseconds>(clock::now() -
								start_)
		    .count();
	}

	/// @return the elapsed seconds since start
	auto ElapsedSec() const
	{
		return std::chrono::duration_cast<seconds>(clock::now() -
							   start_)
		    .count();
	}

	/**
	 * Resets the start point
	 * @return the updated start point
	 */
	auto Restart()
	{

		start_ = clock::now();
		return start_;
	}

private:
	typename clock::time_point start_;
};

} // namespace archimedes::time

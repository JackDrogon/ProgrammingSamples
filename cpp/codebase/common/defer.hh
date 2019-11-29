#pragma once

#include <memory>
#include <type_traits>

namespace archimedes::common
{

template <typename Call> class Defer
{
public:
	Defer(Call &&call) : call_(std::forward<Call>(call)) {}
	~Defer() { call_(); }

	Defer(const Defer &) = delete;
	Defer &operator=(const Defer &) = delete;

private:
	std::decay_t<Call> call_;
};

struct DeferKeywordWrapper {
	template <typename Call> auto operator<<(Call &&call)
	{
		return Defer(std::forward<Call>(call));
	}
};

} // namespace archimedes::common

#define DEFER(line, counter)                                                   \
	auto _defer_##line##_##counter =                                       \
	    archimedes::common::DeferKeywordWrapper() <<
#define defer DEFER(__LINE__, __COUNTER__)

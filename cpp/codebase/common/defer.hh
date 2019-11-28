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

} // namespace archimedes::common

#define DEFER(call, line, counter)                                             \
	archimedes::common::Defer __defer_##line##_##counter(call)
#define defer(call) DEFER(call, __LINE__, __COUNTER__)

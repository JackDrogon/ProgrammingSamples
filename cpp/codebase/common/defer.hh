#pragma once

#include <memory>
#include <type_traits>

namespace archimedes::common
{

namespace defer_internal
{

template <typename Call> class Defer
{
public:
	Defer(const Defer &) = delete;
	Defer &operator=(const Defer &) = delete;

	Defer(Call &&call) : call_(std::forward<Call>(call)) {}
	~Defer() { call_(); }

private:
	std::decay_t<Call> call_;
};

} // namespace defer_internal

struct DeferKeywordWrapper {
	template <typename Call> auto operator<<(Call &&call)
	{
		return defer_internal::Defer(std::forward<Call>(call));
	}
};

} // namespace archimedes::common

#define DEFER_CONCAT(a, b, c) a##_##b##_##c
#define DEFER(line, counter)                                                   \
	auto DEFER_CONCAT(_defer, line, counter) =                             \
	    archimedes::common::DeferKeywordWrapper() <<
#define defer DEFER(__LINE__, __COUNTER__)

// clang-format off
#define SCOPE_EXIT DEFER(__LINE__, __COUNTER__) [&]
// clang-format off

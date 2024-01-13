#pragma once

#include <array>
#include <functional>
#include <list>
#include <string_view>

// TODO priority
// macro 的默认参数
namespace archimedes::common
{

class Initializer
{
public:
	enum class Priority { kHigh, kNormal, kLow };
	using Function = std::function<bool()>;
	using FunctionLists =
	    std::array<std::list<std::pair<std::string_view, Function>>, 3>;

	// TODO: Add std::function<void()> wrapper
	static bool Register(std::string_view name, Function f,
			     Priority priority = Priority::kNormal)
	{
		function_lists_[static_cast<size_t>(priority)].emplace_back(
		    std::move(name), std::move(f));
		return true;
	}

	// TODO: Use optional for return error name
	static bool Init()
	{
		for (auto &function_list : function_lists_) {
			for (auto &[name, function] : function_list) {
				if (!function()) {
					return false;
				}
			}
		}
		return true;
	}

private:
	static FunctionLists function_lists_;
};
inline typename Initializer::FunctionLists Initializer::function_lists_;

} // namespace archimedes::common

#define INIT_CONCAT(a, b, c) a##_##b##_##c
#define INIT(line, counter, name, func, priority)                              \
	auto INIT_CONCAT(_initializer, line, counter) =                        \
	    archimedes::common::Initializer::Register(name, func, priority)
// NOTE: lambda as func: use lambda string to name
#define init(func, priority) INIT(__LINE__, __COUNTER__, #func, func, priority)

#define RUN_INIT()                                                             \
	do {                                                                   \
		Initializer::Init();                                           \
	} while (0)

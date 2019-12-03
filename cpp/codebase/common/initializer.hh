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

	static bool Register(std::string_view name, Function f,
			     Priority priority = Priority::kNormal)
	{
		function_lists_[static_cast<size_t>(priority)].emplace_back(
		    std::move(name), std::move(f));
		return true;
	}

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

#define RUN_INIT()                                                             \
	do {                                                                   \
		Initializer::Init();                                           \
	} while (0)

#pragma once

#include <string_view>
#include <vector>

namespace archimedes::string_utils
{

template <typename StringContainer = std::string_view>
[[nodiscard]] auto split(const std::string_view &str, const char delimiter)
{
	std::vector<StringContainer> result;
	auto beg = 0, end = 0;

	for (auto ch : str) {
		++end;
		if (ch == delimiter) {
			if (beg != end - 1) {
				result.emplace_back(str.data() + beg,
						    end - 1 - beg);
			}
			beg = end;
		}
	}
	if (beg != end) {
		result.emplace_back(str.data() + beg, end - beg);
	}

	return result;
}

auto trim(const std::string *str, const std::string_view &trim_set) {}

}; // namespace archimedes::string_utils

#include <iostream>
#include <tuple>
#include <vector>

#include <fmt/format.h>
#include <fmt/ranges.h>

int main()
{
	// tuple => ('a', 1, 2.0)
	{
		std::tuple<char, int, float> t{'a', 1, 2.0f};
		fmt::print("{}\n", t);
	}

	{
		std::tuple<int, char> t = {1, 'a'};
		fmt::print("{}\n", fmt::join(t, ", "));
	}

	// vector
	{
		std::vector<int> v{1, 2, 3, 4, 6, 5};
		fmt::print("{}\n", fmt::join(v, ", "));
	}

	return 0;
}

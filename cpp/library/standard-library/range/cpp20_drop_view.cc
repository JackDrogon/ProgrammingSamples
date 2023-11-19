#include <algorithm>  // for __for_each_fn, for_each
#include <array>      // for array
#include <functional> // for identity
#include <iostream>   // for operator<<, basic_ostream, cout
#include <iterator>   // for distance
#include <ranges>     // for all_t, borrowed_iterator_t, __find_fn, drop_view

int main()
{
	constexpr std::array hi{'H', 'e', 'l', 'l', 'o', ',',
				' ', 'C', '+', '+', '2', '0'};

	std::ranges::for_each(hi, [](const char c) { std::cout << c; });
	std::cout << '\n';

	constexpr auto n =
	    std::distance(hi.cbegin(), std::ranges::find(hi, 'C'));

	auto cxx = std::ranges::drop_view{hi, n};

	std::ranges::for_each(cxx, [](const char c) { std::cout << c; });
	std::cout << '\n';
}

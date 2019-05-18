#include <iostream>
#include <tuple>

template <class... Args>
struct type_list
{
	template <std::size_t N>
	using type = typename std::tuple_element<N, std::tuple<Args...>>::type;
};

int main()
{
	std::cout << std::boolalpha;
	type_list<int, char, bool>::type<2> x = true;
	std::cout << x << '\n';
}

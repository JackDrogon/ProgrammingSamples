#include <array>
#include <charconv>
#include <iostream>

int main()
{
	std::array<char, 10> str{"42"};
	int result;
	std::from_chars(str.data(), str.data() + str.size(), result);
	std::cout << result;
	return 0;
}

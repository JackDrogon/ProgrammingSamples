#include <fmt/format.h>
#include <iostream>
#include <string>

int main()
{
	std::string str = fmt::format("The answer is {0} {0} {3}\n", 42);
	// std::string str = fmt::format("The answer is {}\n", 42);
	// auto s1 = "{0}"_format(42); no _format literal
	std::cout << str;
	return 0;
}

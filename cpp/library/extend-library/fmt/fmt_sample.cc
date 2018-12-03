#include <fmt/format.h>
#include <iostream>
#include <string>

int main()
{
	std::string str = fmt::format("The answer is {}\n", 42);
	std::cout << str;
	return 0;
}

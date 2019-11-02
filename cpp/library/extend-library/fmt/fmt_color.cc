#include <fmt/color.h>
#include <fmt/format.h>

int main()
{
	fmt::print(fg(fmt::color::red), "hello {}\n", "red");
	fmt::print(fg(fmt::color::green), "hello {}\n", "green");
	fmt::print(fg(fmt::color::blue) | bg(fmt::color::red), "two color\n");

	return 0;
}

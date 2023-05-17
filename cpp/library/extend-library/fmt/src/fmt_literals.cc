#include "fmt/format.h"

using namespace fmt::literals;

int main()
{
	fmt::println("Hello, {name}! The answer is {number}. Goodbye, {name}.",
		     "name"_a = "World", "number"_a = 42);
	return 0;
}

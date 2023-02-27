#include <iostream>
using namespace std;

#include <fmt/format-inl.h>
#include <fmt/format.h>

int main()
{
	fmt::memory_buffer error_buff;
	fmt::internal::format_error_code(error_buff, 42, "test");
	std::cout << error_buff.data() << std::endl;

	return 0;
}

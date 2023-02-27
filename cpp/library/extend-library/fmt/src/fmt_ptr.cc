#include <fmt/format.h>
#include <memory>

int main()
{
	int n{0};
	fmt::print("{}\n", fmt::ptr(std::addressof(n)));
	fmt::print("{:p}\n", static_cast<void *>(std::addressof(n)));

	return 0;
}

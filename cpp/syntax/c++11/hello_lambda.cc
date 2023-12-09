#include <iostream>

int main()
{
	auto counter = [count = 0]() mutable {
		++count;
		std::cout << "Count: " << count << std::endl;
	};

	counter(); // 输出：Count: 1
	counter(); // 输出：Count: 2

	return 0;
}

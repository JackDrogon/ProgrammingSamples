#include <iostream>
using namespace std;


constexpr int fibonacci(int num)
{
	return (num < 2) ? 1 : fibonacci(num-1) + fibonacci(num-2);
}

int main()
{
	int fib[] = {
		fibonacci(11),
		fibonacci(12),
		fibonacci(13),
		fibonacci(14),
		fibonacci(15),
		fibonacci(16)
	};

	return 0;
}

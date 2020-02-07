#include <iostream>
#include <type_traits>

using namespace std;

class Foo
{
	int v1;
	double v2;

public:
	Foo(int n) : v1(n), v2() {}
	Foo(int n, double f) noexcept : v1(n), v2(f) {}
};

int main()
{
	std::cout << "Foo is ...\n"
		  << std::boolalpha << "\tConstructible from int? "
		  << std::is_constructible<Foo, int>::value << '\n';
	return 0;
}

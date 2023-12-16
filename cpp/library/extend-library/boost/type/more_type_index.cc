#include <functional>
#include <iostream>

#include <boost/type_index.hpp>

using boost::typeindex::type_id_with_cvr;
using namespace std;

namespace
{
template <typename T> void print_pretty_name(const T &)
{
	cout << type_id_with_cvr<T>().pretty_name() << endl;
}
}

void callme(std::function<void(int, float)> arg) { arg(42, 4.2); }

int main()
{
	auto func = []() { std::cout << __PRETTY_FUNCTION__ << std::endl; };
	auto fn = std::bind(func);
	print_pretty_name(main);
	print_pretty_name(func);
	print_pretty_name(fn);
	print_pretty_name(callme);

	// auto fn = std::bind([](auto&& x){std::cout << "x=" << x << std::endl;
	// }, std::placeholders::_1);  <-- this works too and prints 42 auto fn
	// = std::bind([](auto&& x){std::cout << "x=" << x << std::endl; },
	// std::placeholders::_2);  <-- and works too and prints 4.2

	callme(fn);
	return 0;
}

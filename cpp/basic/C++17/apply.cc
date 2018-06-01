#include <iostream>
#include <tuple>
#include <utility>
using namespace std;

int add(int first, int second) { return first + second; }

template <typename T> T add_generic(T first, T second)
{
	return first + second;
}

auto add_lambda = [](auto first, auto second) { return first + second; };

int main()
{
	cout << apply(add, make_pair(1, 2)) << '\n';

	// Error: can't deduce the function type
	// cout << apply(add_generic, make_pair(2.0f, 3.0f)) <<
	// '\n';
	cout << apply(add_generic<float>, make_pair(2.0f, 3.0f)) << '\n';

	cout << apply(add_lambda, make_pair(2.0f, 3.0f)) << '\n';
}

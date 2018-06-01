#include <iostream>
using namespace std;

/*
template <typename T0> void print(T0 &&t0) { cout << forward<T0>(t0) << '\n'; }

template <typename T0, typename... Ts> void print(T0 &&t0, Ts &&... ts)
{
	print(forward<T0>(t0));
	print(forward<Ts>(ts)...);
}
*/

template <typename T0, typename... Ts> void print(T0 &&t0, Ts &&... ts)
{
	cout << forward<T0>(t0) << '\n';

	if constexpr (sizeof...(ts)) {
		print(forward<Ts>(ts)...);
	}
}

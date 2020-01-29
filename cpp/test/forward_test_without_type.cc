#include <iostream>
#include <utility>
using namespace std;

template <typename T> void func(T &&t) { cout << forward<T>(t) << endl; }

int main(void)
{
	func(10);
	// func(std::forward<string>(string("10")));
	// func(std::forward(string("10")));
	int i = 10;
	func(std::forward(i));
	// func(std::forward(10));
	return 0;
}

#include <functional>
#include <iostream>
using namespace std;

void f(int &i)
{
	++i;
	cout << i << endl;
}

int main()
{
	int i = 10;
	cout << "Origin i: " << i << endl;
	auto m1 = std::bind(f, i);
	m1();
	cout << "After bind without ref i: " << i << endl;
	auto m2 = std::bind(f, std::ref(i));
	m2();
	cout << "After bind without ref i: " << i << endl;
	return 0;
}

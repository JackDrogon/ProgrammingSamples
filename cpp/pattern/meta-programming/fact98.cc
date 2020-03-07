#include <iostream>
using namespace std;

template <int n> struct fact98 {
	static const int value = n * fact98<n - 1>::value;
};

template <> struct fact98<0> {
	static const int value = 1;
};

int main()
{
	cout << fact98<10>::value << endl;

	return 0;
}

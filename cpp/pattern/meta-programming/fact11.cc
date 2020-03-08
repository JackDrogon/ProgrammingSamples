#include <iostream>
#include <type_traits>
using namespace std;

constexpr int fact11(int n) { return n <= 1 ? 1 : n * fact11(n - 1); }

int main()
{
	// cout << integral_constant<int, fact11(10)>::value << endl;
	cout << fact11(10) << endl;
	return 0;
}

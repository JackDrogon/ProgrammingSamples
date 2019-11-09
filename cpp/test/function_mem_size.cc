#include <functional>
#include <iostream>
using namespace std;

int main()
{
	auto f1 = function<int(int)>();
	cout << sizeof(f1) << endl;

	function<int(int)> f2 = [](int x) { return x; };
	f2(10);
	cout << sizeof(f2) << endl;
}

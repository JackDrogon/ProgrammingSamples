#include <functional>
#include <iostream>
using namespace std;

int main()
{
	auto f1 = function<int(int)>();
	cout << sizeof(f1) << endl;
}

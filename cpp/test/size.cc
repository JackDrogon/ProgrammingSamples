#include <iostream>
using namespace std;

struct A {
	char c;
	long double ld;
};

int main()
{
	cout << sizeof(long double) << endl;
	cout << sizeof(A) << endl;

	return 0;
}

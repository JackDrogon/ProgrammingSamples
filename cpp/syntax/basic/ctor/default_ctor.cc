#include <iostream>
using namespace std;

class A
{
public:
	int v;
};
A g_var;

int main()
{
	A l_var;
	static A l_static;
	cout << g_var.v << ' ' << l_var.v << ' ' << l_static.v << endl;
	return 0;
}

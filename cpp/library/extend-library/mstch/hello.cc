#include <iostream>
#include <string>
using namespace std;

#include <mstch/mstch.hpp>

int main()
{
	string view("Hello, world");
	mstch::map context;

	cout << mstch::render(view, context) << endl;

	return 0;
}

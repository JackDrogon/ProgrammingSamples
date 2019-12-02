#include <iostream>
using namespace std;

#include "initializer.hh"
using namespace archimedes::common;

auto dummy = Initializer::Register("hello", [] {
	cout << "test" << endl;
	return true;
});

int main()
{
	RUN_INIT();
	return 0;
}

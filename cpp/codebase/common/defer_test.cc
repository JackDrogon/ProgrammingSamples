#include "defer.hh"

#include <iostream>
using namespace std;

int main()
{
	defer([] { cout << "defer call" << endl; });
	return 0;
}

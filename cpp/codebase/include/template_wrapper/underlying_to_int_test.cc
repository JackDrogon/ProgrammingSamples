#include "underlying_to_int.hh"

#include <iostream>
using namespace std;

namespace
{
enum class Enum { kFoo, kBar };
}

int main()
{
	cout << "kFoo: " << to_underlying(Enum::kFoo) << endl;
	cout << "kBar: " << to_underlying(Enum::kBar) << endl;
	return 0;
}

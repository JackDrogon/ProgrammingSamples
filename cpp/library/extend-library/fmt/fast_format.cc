#include <iostream>
using namespace std;

#include <fmt/format.h>
using namespace fmt::literals;

int main()
{
	cout << "{0} {1} {0}"_format("abra", "cad") << endl;

	return 0;
}

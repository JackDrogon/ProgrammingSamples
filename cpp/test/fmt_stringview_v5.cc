#include <iostream>
#include <string_view>
using namespace std;

#include <fmt/format.h>

int main()
{
	std::string_view fmt = "hello, {}";
	cout << fmt::format(fmt, "Fuck") << endl;
	return 0;
}

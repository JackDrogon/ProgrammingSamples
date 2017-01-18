#include <fmt/format.h>
using namespace fmt::literals; // for _a, _format

#include <iostream>
using namespace std;


// TODO: {{i}}

int main()
{
	fmt::print("{0} {1} {0}\n", 1, 2); // 此处如果出现{2}, 不能在编译期间检测出来

	return 0;
}

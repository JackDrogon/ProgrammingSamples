#include <fmt/format.h>
using namespace fmt;
// using namespace fmt::literals; // for _a, _format

#include <iostream>
using namespace std;

// TODO: {{i}}

int main()
{
	fmt::print("{0} {1} {0}\n", 1,
		   2); // 此处如果出现{2}, 不能在编译期间检测出来

	print("{0}, {1}, {2}\n", 'a', 'b', 'c'); // Result: "a, b, c"
	print("{}, {}, {}\n", 'a', 'b', 'c');    // Result: "a, b, c"
	print("{2}, {1}, {0}\b", 'a', 'b', 'c'); // Result: "c, b, a"
	// arguments' indices can be repeated
	print("{0}{1}{0}\n", "abra", "cad"); // Result: "abracadabra"

	fmt::print("{:<30}\n", "left aligned"); // Result: "left aligned "
	fmt::print("{:>30}\n",
		   "right aligned"); // Result: "                 right aligned"
	print("{:^30}\n", "centered"); // Result: "           centered "
	print("{:*^30}\n",
	       "centered"); // Result: "***********centered***********"
			    // use '*' as a fill char

	return 0;
}

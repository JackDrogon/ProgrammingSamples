#include <fmt/format.h>

#include <iostream>
using namespace std;

int main()
{
	fmt::memory_buffer m;
	// TODO need \0
	fmt::format_to(m, "Look, a {} string", 'C');

	cout << fmt::to_string(m) << endl;
	cout << m.data() << endl; // '\0'

	return 0;
}

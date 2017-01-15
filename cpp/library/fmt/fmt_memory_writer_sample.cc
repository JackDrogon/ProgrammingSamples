#include <fmt/format.h>

#include <iostream>
using namespace std;

int main()
{
	fmt::MemoryWriter w;
	w.write("Look, a {} string", 'C');
	
	cout << w.c_str() << endl;

	return 0;
}

#include <iostream>
using namespace std;

int main()
{
	std::string s = "hello,world!";
	std::string_view sv = s;
	sv[0] = 'H';
	return 0;
}

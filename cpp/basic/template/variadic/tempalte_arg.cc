#include <iostream>
using namespace std;

template <typename T>
ostream &print(ostream &os, const T &t)
{
	return os << t << '\n';
}

template <typename T, typename... Args>
ostream &print(ostream &os, const T &t, const Args&... rest)
{
	os << t << ", ";
	return print(os, rest...);
}

int main()
{
	print(cout, 1, "ha", 1.23);
	print(cout, 2, "ha", 1.23);
	
	return 0;
}

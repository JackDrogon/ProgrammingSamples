#include <iostream>
using namespace std;

// TODO: const & 和 const &&的不同，这里不能用&&
template <typename... Args> int args_size(const Args &... args)
{
	// or sizeof...(Args)
	return sizeof...(args);
}

int main()
{
	cout << args_size(1, 2, 3, "", 'c') << endl;
	return 0;
}

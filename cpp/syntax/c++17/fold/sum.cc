#include <iostream>
using namespace std;

template <typename... Ns> auto sum(Ns... ns) { return (ns + ... + 0); }

int main()
{
	cout << sum(1, 2, 3, 4, 5) << endl;

	return 0;
}

#include <algorithm>
#include <cctype>
#include <iostream>
#include <string>
using namespace std;

int main()
{
	string s("hello");
	transform(s.begin(), s.end(), s.begin(),
		  [](unsigned char c) { return toupper(c); });
	cout << s << endl;

	int a[5] = {0, 1, 2, 3, 4};
	transform(begin(a), end(a), begin(a), [](int a) { return a + 1; });
	cout << a[0] << endl;
}

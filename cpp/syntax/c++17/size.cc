#include <iostream>
#include <vector>
#include <iterator>
using namespace std;

int main()
{
	vector<int> v = {3, 1, 4};
	cout << size(v) << '\n';

	int a[] = {-5, 10, 15};
	cout << size(a) << '\n';

	char *m;
	cout << size(m) << endl;
}

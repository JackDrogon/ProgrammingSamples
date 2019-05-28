#include <iostream>
#include <vector>
#include <iterator>
using namespace std;

int main()
{
	vector<int> v = {3, 1, 4};
	cout << ssize(v) << '\n';

	int a[] = {-5, 10, 15};
	cout << ssize(a) << '\n';
}

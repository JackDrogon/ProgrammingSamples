#include <vector>
#include <iostream>
using namespace std;

int main( )
{
	vector<int> c{0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	for (auto &i : c) {
		cout << i << " ";
	}
	cout << '\n';

	c.erase(c.begin());

	for (auto &i : c) {
		cout << i << " ";
	}
	cout << '\n';

	c.erase(c.begin() + 2, c.begin() + 5);

	for (auto &i : c) {
		cout << i << " ";
	}
	cout << '\n';

	// Erase all even numbers (C++11 and later)
	for (auto it = c.begin(); it != c.end();) {
		if (*it % 2 == 0) {
			it = c.erase(it);
		} else {
			++it;
		}
	}

	for (auto &i : c) {
		cout << i << " ";
	}
	cout << '\n';
}

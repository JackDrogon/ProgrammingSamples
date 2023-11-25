#include <iostream>
#include <ranges>
#include <vector>
using namespace std;

int main()
{
	vector vec{1, 2, 3, 4, 5};
	cout << "vec: ";
	for (auto i : vec) {
		cout << i << " ";
	}
	cout << endl;

	cout << "vec | views::reverse: ";
	for (auto i : vec | views::reverse) {
		cout << i << " ";
	}
	cout << endl;

	return 0;
}

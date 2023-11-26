#include <iostream>
#include <ranges>
#include <vector>
using namespace std;

int main()
{
	vector vec{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	cout << "vec: ";
	for (auto i : vec) {
		cout << i << " ";
	}
	cout << endl;

	cout << "vec | views::filter(even) | views::transform(square): ";
	auto even = [](int i) { return 0 == i % 2; };
	auto square = [](int i) { return i * i; };
	for (auto i : vec | views::filter(even) | views::transform(square)) {
		cout << i << " ";
	}
	cout << endl;

	return 0;
}

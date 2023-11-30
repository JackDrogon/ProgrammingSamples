#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

int main()
{
	vector vec{3, 5, 2, 8, 10};
	ranges::sort(vec);
	for (auto i : vec) {
		cout << i << " ";
	}
	cout << endl;
}

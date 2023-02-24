#include <iostream>
using namespace std;

#include <folly/FBVector.h>

int main()
{
	folly::fbvector<int> numbers({0, 1, 2, 3});
	numbers.reserve(10);
	for (int i = 4; i < 10; i++) {
		numbers.push_back(i * 2);
	}
	assert(numbers[6] == 12);

	for (auto num : numbers) {
		cout << num << ' ';
	}

	return 0;
}

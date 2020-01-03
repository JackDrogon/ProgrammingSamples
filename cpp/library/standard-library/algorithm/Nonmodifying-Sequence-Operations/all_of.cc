#include <vector>
#include <numeric>
#include <algorithm>
#include <iterator>
#include <iostream>
#include <functional>
using namespace std;

// (since C++11) (until C++20)
// template< class InputIt, class UnaryPredicate >
// bool all_of( InputIt first, InputIt last, UnaryPredicate p );

// (since C++20)
// template< class InputIt, class UnaryPredicate >
// constexpr bool all_of( InputIt first, InputIt last, UnaryPredicate p );

int main()
{
	vector<int> v(10, 2);
	partial_sum(v.cbegin(), v.cend(), v.begin());
	cout << "Among the numbers: ";
	copy(v.cbegin(), v.cend(), ostream_iterator<int>(cout, ", "));
	cout << '\n';

	if (all_of(v.cbegin(), v.cend(), [](int i){ return i % 2 == 0; })) {
		cout << "All numbers are even\n";
	}

	return 0;
}

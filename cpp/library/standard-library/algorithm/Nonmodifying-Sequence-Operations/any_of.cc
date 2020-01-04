#include <algorithm>
#include <functional>
#include <iostream>
#include <iterator>
#include <numeric>
#include <vector>
using namespace std;

// (since C++11) (until C++20)
// template< class InputIt, class UnaryPredicate >
// bool any_of( InputIt first, InputIt last, UnaryPredicate p );

// (since C++20)
// template< class InputIt, class UnaryPredicate >
// constexpr bool any_of( InputIt first, InputIt last, UnaryPredicate p );

// (since C++17)
// template< class ExecutionPolicy, class ForwardIt, class UnaryPredicate >
// bool any_of( ExecutionPolicy&& policy, ForwardIt first, ForwardIt last,
// UnaryPredicate p );

int main()
{
	vector<int> v(10, 2);
	partial_sum(v.cbegin(), v.cend(), v.begin());
	cout << "Among the numbers: ";
	copy(v.cbegin(), v.cend(), ostream_iterator<int>(cout, " "));
	cout << '\n';

	if (any_of(v.cbegin(), v.cend(), [](int n) { return n % 7 == 0; })) {
		cout << "At least one number is divisible by 7\n";
	}

	struct DivisibleBy {
		const int d;
		DivisibleBy(int n) : d(n) {}
		bool operator()(int n) const { return n % d == 0; }
	};

	if (any_of(v.cbegin(), v.cend(), DivisibleBy(7))) {
		cout << "At least one number is divisible by 7\n";
	}
}

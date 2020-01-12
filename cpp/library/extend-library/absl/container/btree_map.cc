#include <iostream>
#include <string>
#include <utility>
using namespace std;

#include <absl/container/btree_map.h>

// NOTE: 要侵入std
namespace std
{
template <typename FirstType, typename SecondType>
ostream &operator<<(ostream &os, const std::pair<FirstType, SecondType> &data)
{
	return os << "<" << data.first << ", " << data.second << ">";
}
} // namespace std

int main()
{
	using Ducks = absl::btree_map<int, string>;
	Ducks ducks = {
	    {2, "dewey"},
	    {1, "huey"},
	    {3, "louie"},
	};

	copy(ducks.cbegin(), ducks.cend(),
	     ostream_iterator<Ducks::value_type>(cout, " "));
	cout << endl;

	return 0;
}

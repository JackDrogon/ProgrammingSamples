#include <optional>
#include <iostream>
#include <string>
using namespace std;

int main()
{
	optional<int> o1, // empty
	    o2 = 1,       // init from rvalue
	    o3 = o2;      // copy-constructor

	// calls string( initializer_list<CharT> ) constructor
	optional<string> o4(in_place, {'a', 'b', 'c'});

	// calls string( size_type count, CharT ch ) constructor
	optional<string> o5(in_place, 3, 'A');

	// Move-constructed from string using deduction guide to pick the type

	optional<string> o6(string{"deduction"});

	cout << *o2 << ' ' << *o3 << ' ' << *o4 << ' ' << *o5 << ' ' << *o6
	     << '\n';
}

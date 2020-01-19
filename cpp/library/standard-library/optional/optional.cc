#include <iostream>
#include <optional>
#include <string>
using namespace std;

void simple()
{
	optional<int> o1, // empty
	    o2 = 1,	  // init from rvalue
	    o3 = o2;	  // copy-constructor

	// calls string( initializer_list<CharT> ) constructor
	optional<string> o4(in_place, {'a', 'b', 'c'});

	// calls string( size_type count, CharT ch ) constructor
	optional<string> o5(in_place, 3, 'A');

	// Move-constructed from string using deduction guide to pick the type

	optional<string> o6(string{"deduction"});

	optional<int> n1(1);
	cout << *o1 << endl;

	cout << *o2 << ' ' << *o3 << ' ' << *o4 << ' ' << *o5 << ' ' << *o6
	     << endl;
}

// optional can be used as the return type of a factory that may fail
std::optional<std::string> create(bool b)
{
	if (b) {
		return "Godzilla";
	}

	return {};
}

// std::nullopt can be used to create any (empty) std::optional
auto create2(bool b)
{
	return b ? std::optional<std::string>{"Godzilla"} : std::nullopt;
}

// std::reference_wrapper may be used to return a reference
auto create_ref(bool b)
{
	static std::string value = "Godzilla";
	return b ? std::optional<std::reference_wrapper<std::string>>{value}
		 : std::nullopt;
}

auto check_create()
{
	std::cout << "create(false) returned "
		  << create(false).value_or("empty") << endl;

	// optional-returning factory functions are usable as conditions of
	// while and if
	if (auto str = create2(true)) {
		std::cout << "create2(true) returned " << *str << endl;
	}

	if (auto str = create_ref(true)) {
		// using get() to access the reference_wrapper's value
		std::cout << "create_ref(true) returned " << str->get() << endl;
		str->get() = "Mothra";
		std::cout << "modifying it changed it to " << str->get()
			  << endl;
	}
}

int main()
{
	simple();
	check_create();
}

#include <functional>
#include <iostream>
using namespace std;

struct Foo {
	void display_greeting() { cout << "Hello, world.\n"; }
	void display_number(int i) { cout << "number: " << i << '\n'; }
	int data = 7;
};

int main()
{
	Foo f;

	// member function(no params)
	auto greet = mem_fn(&Foo::display_greeting);
	greet(f);

	// member function(params)
	auto print_num = mem_fn(&Foo::display_number);
	print_num(f, 42);

	// data member
	auto access_data = mem_fn(&Foo::data);
	cout << "data: " << access_data(f) << '\n';
}

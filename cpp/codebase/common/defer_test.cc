#include "defer.hh"

#include <functional>
#include <iostream>
using namespace std;

namespace
{

void valid()
{
	int n = 0;
	cout << "Before defer: n = " << n << endl;
	{
		defer[&n] { ++n; };
	}
	cout << "After defer: n = " << n << endl;
}

void check_lambda()
{
	defer[] { cout << "defer lambda call" << endl; };
}

void bind_f() { cout << "defer bind_f call" << endl; }
void check_bind() { defer bind(bind_f); }

void check_opeator()
{
	struct S {
		void operator()() { cout << "defer operator() call" << endl; }
	};
	defer S();
}

// TODO
// void check_class_function()
// {
// 	struct S {
// 		void call() { cout << "defer operator() call" << endl; }
// 	};
// 	defer S().call();
// }

} // namespace

int main()
{
	valid();

	check_lambda();
	check_bind();
	check_opeator();

	return 0;
}

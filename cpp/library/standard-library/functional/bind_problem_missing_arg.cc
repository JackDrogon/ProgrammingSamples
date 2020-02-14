#include <functional>
#include <iostream>
using namespace std;

int main()
{
	auto lambda = [] { cout << __PRETTY_FUNCTION__ << endl; };

	// NOTE: bind function<void(void)> -> function<void(int)>
	function<void(int)> f = bind(lambda);
	f(10);

	function<void(void)> f1 = bind(lambda);
	f1();

	// ./bind_problem_missing_arg.cc:14:22: error: no viable conversion from
	// 'function<void ()>' to 'function<void (int)>'
	// function<void(int)> f2 = f1;

	return 0;
}

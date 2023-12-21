#include <iostream>

#include <boost/coroutine/all.hpp>
using pull_coro_t = boost::coroutines::asymmetric_coroutine<void>::pull_type;
using push_coro_t = boost::coroutines::asymmetric_coroutine<void>::push_type;

void foo(push_coro_t &sink)
{
	std::cout << "1";
	sink();
	std::cout << "2";
	sink();
	std::cout << "3";
	sink();
	std::cout << "4";
}

int main(int argc, char *argv[])
{
	{
		pull_coro_t source(foo);
		while (source) {
			std::cout << "-";
			source();
		}
	}

	std::cout << "\nDone" << std::endl;

	return 0;
}

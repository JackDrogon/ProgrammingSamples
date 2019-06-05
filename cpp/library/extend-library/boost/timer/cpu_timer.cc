#include <boost/timer/timer.hpp>
#include <cmath>
#include <iostream>

using namespace boost::timer;

int main()
{
	cpu_timer timer;

	for (int i = 0; i < 1000000; ++i) {
		std::pow(1.234, i);
	}
	std::cout << timer.format() << '\n';

	timer.stop();

	for (int i = 0; i < 1000000; ++i) {
		std::pow(1.234, i);
	}
	std::cout << timer.format() << '\n';

	timer.resume();

	for (int i = 0; i < 1000000; ++i) {
		std::pow(1.234, i);
	}
	std::cout << timer.format() << '\n';
}

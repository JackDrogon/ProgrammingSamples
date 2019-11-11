#include <future>
#include <thread>
#include <chrono>
#include <random>
#include <iostream>
#include <exception>
using namespace std;

int run(char c)
{
	// random-number generator (use c as seed to get different sequences)
	std::default_random_engine dre(c);
	std::uniform_int_distribution<int> id(10, 1000);

	// loop to print character after a random period of time
	for (int i = 0; i < 10; ++i) {
		this_thread::sleep_for(chrono::milliseconds(id(dre)));
		cout.put(c).flush();
	}

	return c;
}

int f1() { return run('.'); }

int f2() { return run('+'); }

int main()
{
	std::cout << "starting f1() '.' in background"
		  << " and f2() '+' in foreground:" << std::endl;

	// start f1() asynchronously (now or later or never):
	// std::future<int>
	auto result1 = std::async(f1);

	int result2 = f2(); // call f2() synchronously (here and now)

	// print result (wait for f1() to finish and add its result to
	// result2
	int result = result1.get() + result2;

	std::cout << "\nresult of f1() + f2(): " << result << std::endl;
}

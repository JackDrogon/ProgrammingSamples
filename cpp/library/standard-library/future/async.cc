#include <future>
#include <thread>
#include <random>
#include <iostream>
using namespace std;

namespace
{
static int run(char c)
{
	// random-number generator (use c as seed to get different sequences)
	default_random_engine dre(static_cast<unsigned int>(c));
	uniform_int_distribution<int> id(2, 30);

	// loop to print character after a random period of time
	for (size_t i = 0; i < 10; ++i) {
		this_thread::sleep_for(chrono::milliseconds(id(dre)));
		cout.put(c).flush();
	}

	return c;
}

int f1() { return run('.'); }

int f2() { return run('+'); }
} // namespace

int main()
{
	cout << "starting f1() '.' in background"
	     << " and f2() '+' in foreground:" << endl;

	// start f1() asynchronously (now or later or never):
	// future<int>
	auto result1 = async(f1);

	int result2 = f2(); // call f2() synchronously (here and now)

	// print result (wait for f1() to finish and add its result to
	// result2
	int result = result1.get() + result2;

	cout << "\nresult of f1() + f2(): " << result << endl;
}

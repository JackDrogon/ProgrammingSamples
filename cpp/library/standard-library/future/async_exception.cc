#include <exception>
#include <future>
#include <iostream>
#include <stdexcept>
using namespace std;

namespace
{
[[noreturn]] void task1() { throw runtime_error("timeout"); }
} // namespace

int main()
{
	cout << "starting 2 tasks" << endl;
	cout << "- task1: process endless loop of memory consumption" << endl;
	cout << "- task2: wait for <return> and then for task1" << endl;

	// start task1() asynchronously (now or later or never)
	auto f1 = async(task1);

	cin.get(); // read a character (like getchar())

	cout << "\nwait for the end of task1: " << endl;
	try {
		// wait for task1() to finish (raises exception if any)
		f1.get();
	} catch (const exception &e) {
		cerr << "EXCEPTION: " << e.what() << endl;
	}
}

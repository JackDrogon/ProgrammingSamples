#include "stop_watch.hh"

#include <iostream>
using namespace std;

int main()
{
	archimedes::time::StopWatch watch;

	volatile int n{0};
	for (auto i = 0; i < 10'000'000; ++i) {
		n += i;
	}
	cout << "Waste " << watch.ElapsedNs() << "ns" << endl;
	watch.Restart();
	cout << "Waste " << watch.ElapsedNs() << "ns" << endl;

	return 0;
}

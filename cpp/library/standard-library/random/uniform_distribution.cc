#include <random>
#include <iostream>
#include <vector>
using namespace std;

int main()
{
	// create default engine as source of randomness
	default_random_engine dre;

	// use engine to generate integral numbers between 10 and 20 (both
	// included)
	uniform_int_distribution<int> di(10, 20);
	for (auto i = 0; i < 20; ++i) {
		cout << di(dre) << " ";
	}
	cout << endl;

	// use engine to generate floating-point numbers between 10.0 and 20.0
	// (10.0 included, 20.0 not included)
	uniform_real_distribution<double> dr(10, 20);
	for (auto i = 0; i < 8; ++i) {
		cout << dr(dre) << " ";
	}
	cout << endl;

	return 0;
}

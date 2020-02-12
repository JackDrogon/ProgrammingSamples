#include <random>
#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

int main()
{
	// create default engine as source of randomness
	default_random_engine dre;

	// use engine to shuffle elements
	vector<int> v = {1, 2, 3, 4, 5, 6, 7, 8, 9};
	shuffle(v.begin(), v.end(), // range
		dre);		    // source of randomness
	for (auto n : v) {
		cout << n << " ";
	}
	cout << endl;
}

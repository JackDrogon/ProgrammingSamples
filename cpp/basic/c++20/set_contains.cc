#include <iostream>
#include <set>
using namespace std;

int main()
{

	if (set<int> example = {1, 2, 3, 4}; example.contains(2)) {
		cout << "Found" << endl;
	} else {
		cout << "Not found" << endl;
	}
}

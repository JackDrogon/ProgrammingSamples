#include <iostream>
#include <vector>
using namespace std;

#include <absl/algorithm/algorithm.h>

int main()
{
	vector<int> v1{1, 2, 3};
	vector<int> v2 = v1;
	vector<int> v3 = {1, 2};
	vector<int> v4 = {1, 2, 4};

	cout << boolalpha
	     << absl::equal(v1.begin(), v1.end(), v2.begin(), v2.end()) << endl
	     << absl::equal(v1.begin(), v1.end(), v3.begin(), v3.end()) << endl
	     << absl::equal(v1.begin(), v1.end(), v4.begin(), v4.end()) << endl;
	return 0;
}

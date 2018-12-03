#include <tbb/tbb.h>
#include <iostream>

using namespace tbb;
using namespace std;

int main()
{
	parallel_for(0, 10, [](int v) { cout << v << endl; });

	return 0;
}

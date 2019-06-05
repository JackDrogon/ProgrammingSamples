#include <iostream>
using namespace std;

#include <boost/progress.hpp>
using namespace boost;

int main()
{
	{
		progress_timer t;
		cout << "Hello,World!" << endl;
	}
	{
		progress_timer t;
		int i;
		for (i = 0; i < 100000000; ++i)
			;
		cout << i << endl;
	}
}

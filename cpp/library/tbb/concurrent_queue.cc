#include "tbb/concurrent_queue.h"
#include <iostream>

using namespace std;

int main()
{
	tbb::concurrent_queue<int> queue;
	for (int i = 0; i < 10; ++i)
		queue.push(i);

	for (auto i(queue.unsafe_begin()); i != queue.unsafe_end(); ++i)
		cout << *i << " ";
	cout << endl;

	return 0;
}

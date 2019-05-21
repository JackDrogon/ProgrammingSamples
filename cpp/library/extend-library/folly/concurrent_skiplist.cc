#include <iostream>
#include <memory>
using namespace std;

#include <folly/ConcurrentSkipList.h>
using namespace folly;


int main()
{
	typedef ConcurrentSkipList<int> SkipListT;
	shared_ptr<SkipListT> sl(SkipListT::createInstance(10));
	{
		// It's usually good practice to hold an accessor only during
		// its necessary life cycle (but not in a tight loop as
		// Accessor creation incurs ref-counting overhead).
		//
		// Holding it longer delays garbage-collecting the deleted
		// nodes in the list.
		SkipListT::Accessor accessor(sl);
		accessor.insert(23);
		accessor.erase(2);
		for (auto &elem : accessor) {
			// use elem to access data
			cout << elem << endl;
		}
	}
}

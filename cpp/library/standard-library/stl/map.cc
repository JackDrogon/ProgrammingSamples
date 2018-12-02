#include <iostream>
#include <map>
using namespace std;

#define _print(x) cout << "map_[" << x << "] => " << map_[x] << endl
#define _size() cout << "The size of the map_ is " << map_.size() << "." << endl
#define _empty() \
	if (map_.empty()) { \
		cout << "map_ is empty!" << endl; \
	} else { \
		cout << "map_ is not empty!" << endl; \
	}
#define _max_size() cout << "The max size of the map_ is " << map_.max_size() << "." << endl

inline void test_map()
{
	map<string, string> map_;
	map_["Hello"] = "World!";
	// cout << "map_[\"Hello\"] => " << map_["Hello"] << endl;
	_print("Hello");
	map_.insert(pair<string, string>("foo", "bar"));
	_print("foo");
	_size();
	_empty();
	map_.clear();
	_size();
	_empty();
	_max_size();
}

int main()
{
	test_map();
	return 0;
}

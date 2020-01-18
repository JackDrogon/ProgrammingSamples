#include <iostream>
#include <map>
#include <string>
using namespace std;

#define _print(x) cout << "map[" << x << "] => " << map[x] << endl
#define _size() cout << "The size of the map is " << map.size() << "." << endl
#define _empty()                                                               \
	if (map.empty()) {                                                     \
		cout << "map is empty!" << endl;                               \
	} else {                                                               \
		cout << "map is not empty!" << endl;                           \
	}
#define _max_size()                                                            \
	cout << "The max size of the map is " << map.max_size() << "." << endl

void test_map()
{
	map<string, string> map;
	map["Hello"] = "World!";
	// cout << "map[\"Hello\"] => " << map["Hello"] << endl;
	_print("Hello");
	map.insert(pair<string, string>("foo", "bar"));
	_print("foo");
	_size();
	_empty();
	map.clear();
	_size();
	_empty();
	_max_size();
}

void map_emplace()
{
	// NOTE: cpp11
	std::map<std::string, std::string> m;

	// uses pair's move constructor
	m.emplace(std::make_pair(std::string("a"), std::string("a")));

	// uses pair's converting move constructor
	m.emplace(std::make_pair("b", "abcd"));

	// uses pair's template constructor
	m.emplace("d", "ddd");

	// uses pair's piecewise constructor
	m.emplace(std::piecewise_construct, std::forward_as_tuple("c"),
		  std::forward_as_tuple(10, 'c'));
	// as of C++17, m.try_emplace("c", 10, 'c'); can be used

	for (const auto &p : m) {
		std::cout << p.first << " => " << p.second << '\n';
	}
}

void map_merge()
{
	map<string, string> m1{{"1", "a"}, {"2", "b"}, {"3", "c"}};
	map<string, string> m2{{"1", "a1"}, {"2", "b2"}, {"4", "d"}};

	cout << "map m1" << endl;
	for (const auto &p : m1) {
		std::cout << p.first << " => " << p.second << '\n';
	}

	cout << "map m2" << endl;
	for (const auto &p : m2) {
		std::cout << p.first << " => " << p.second << '\n';
	}

	m1.merge(m2);
	cout << "map m1 merge m2" << endl;
	for (const auto &p : m1) {
		std::cout << p.first << " => " << p.second << '\n';
	}
}

int main()
{
	test_map();
	map_emplace();
	map_merge();

	return 0;
}

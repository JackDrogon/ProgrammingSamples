#include <folly/dynamic.h>

// NOTE: folly/docs/Dynamic.md

void test()
{
	folly::dynamic twelve = 12;
	folly::dynamic str = "string";
	folly::dynamic map = folly::dynamic::object;
	map[str] = twelve;
	map[str + "another_str"] = folly::dynamic::array("array", "of", 4, "elements");
	map.insert("null_element", nullptr);
	++map[str];
	assert(map[str] == 13);

	// Building a complex object with a sub array inline:
	folly::dynamic d = folly::dynamic::object("key", "value")(
	    "key2", folly::dynamic::array("a", "array"));
}

int main()
{
	test();
	return 0;
}

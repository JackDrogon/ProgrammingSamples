#include <iostream>
using namespace std;

#include "initializer.hh"
using namespace archimedes::common;

static auto dummy = Initializer::Register(
    "hello",
    [] {
	    cout << "another high" << endl;
	    return true;
    },
    Initializer::Priority::kHigh);

static int n{10};
static auto dummy1 = Initializer::Register("hello", [n = ++n] {
	cout << "normal: " << n << endl;
	return true;
});
static auto dummy2 = Initializer::Register("hello", [n = ++n] {
	cout << "normal: " << n << endl;
	return true;
});
static auto dummy3 = Initializer::Register("hello", [n = ++n] {
	cout << "normal: " << n << endl;
	return true;
});

#include "singleton.hh"
using namespace nepenthe::design_pattern;

#include <iostream>
using namespace std;

class Int
{
public:
	int value;
	~Int() { cout << "In class Int dctor" << endl; }
};

class Double
{
public:
	double value;
	~Double() { cout << "In class Double dctor" << endl; }
};

using IntSingleton = Singleton<Int>;
using DoubleSingleton = Singleton<Double>;

int main()
{
	auto instance = IntSingleton::Instance();
	instance->value = 100;
	cout << IntSingleton::Instance()->value << endl;
	IntSingleton::Instance()->value = 1000;
	cout << IntSingleton::Instance()->value << endl;

	auto double_instance = DoubleSingleton::Instance();
	double_instance->value = 99.9;
	cout << DoubleSingleton::Instance()->value << endl;
}

#include <iostream>
using namespace std;

struct Base {
	Base() { cout << "Base ctor." << endl; }
	Base(const Base &base) { cout << "Base copy ctor." << endl; }
};

struct Deliver : public Base {
	Deliver() { cout << "Deliver ctor." << endl; }

	// 如果没有 Base(deliver) 会默认调用 Base()
	Deliver(const Deliver &deliver) : Base(deliver)
	{
		cout << "Deliver copy ctor." << endl;
	}
};

int main()
{
	Deliver d1;
	Deliver d2 = d1;

	return 0;
}

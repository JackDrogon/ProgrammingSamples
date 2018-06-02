#include <iostream>

using namespace std;

struct Base {
	virtual void hello() { cout << "hello base\n"; }
	void print()
	{
		cout << "print.... ";
		hello();
	}
};

struct Deliver : public Base {
	virtual void hello() { cout << "hello deliver\n"; }
};

int main()
{
	Deliver d;
	d.print();

	return 0;
}

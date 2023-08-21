#include <iostream>
using namespace std;

class Base
{
public:
	virtual ~Base() = default;
	virtual void f()
	{
		++i;
		cout << __PRETTY_FUNCTION__ << ", " << i << endl;
	}
	virtual void g() { cout << __PRETTY_FUNCTION__ << endl; }
	virtual void h() { cout << __PRETTY_FUNCTION__ << endl; }

private:
	int i{0};
};

class Derive : public Base
{
public:
	virtual void f()
	{
		i += 1777773;
		cout << __PRETTY_FUNCTION__ << ", " << i << endl;
	}
	virtual void g() { cout << __PRETTY_FUNCTION__ << endl; }
	virtual void h() { cout << __PRETTY_FUNCTION__ << endl; }

private:
	int i{0};
};

int main()
{
	Derive d;
	Base *b = &d;

	b->f();
	d.f();

	return 0;
}

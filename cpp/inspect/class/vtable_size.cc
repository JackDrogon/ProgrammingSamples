#include <iostream>
#include <sys/_types.h>
using namespace std;

struct RawBase {
	RawBase(int n_arg) : n(n_arg) {}
	~RawBase() = default;

	int get() { return n; }
	int n;
};

struct Base {
	Base(int n_arg) : n(n_arg) {}
	virtual ~Base() = default;

	virtual int get() { return n; }
	int n;
};

struct Derived : Base {
	Derived(int n_arg) : Base(n_arg) {}
	virtual int get() { return n + 10; }
};

#define PrintSize(type) cout << #type << ": " << sizeof(type) << endl

int main()
{
	cout << sizeof(void *) << endl;
	PrintSize(RawBase);
	PrintSize(Base);
	cout << "Base Offset n: " << __offsetof(Base, n) << endl;
	PrintSize(Derived);

	return 0;
}

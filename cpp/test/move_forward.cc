#include <iostream>
#include <string>
using namespace std;

#define print_n_function()                                                     \
	cout << "In " << __PRETTY_FUNCTION__ << ":" << __LINE__                \
	     << ", n = " << n_ << endl

struct T {
	T(int n) : n_(n) { print_n_function(); }
	T(const T &t) : n_(t.n_) { print_n_function(); }
	T(T &&t) : n_(t.n_)
	{
		t.n_ = -1;
		print_n_function();
	}

	~T() { print_n_function(); }

	void Print() const { print_n_function(); }

	int n_;
};

struct B {
	B(const T &t) : n_(t.n_) { print_n_function(); }
	B(T &&t) : n_(t.n_)
	{
		t.n_ = -2;
		print_n_function();
	}
	B(const B &b) : n_(b.n_) { print_n_function(); }
	B(B &&b) : n_(b.n_)
	{
		b.n_ = -3;
		print_n_function();
	}

	~B() { print_n_function(); }

	void Print() const { print_n_function(); }

	int n_;
};

template <typename Type> void Print(Type &&s)
{
	cout << "-------Begin---------" << endl;
	print(std::forward<Type>(s));
	cout << "print t.Print() ";
	s.Print();
	cout << "-------End-----------" << endl;
}

void print(const B &b)
{
	cout << "In " << __PRETTY_FUNCTION__ << ", ";
	b.Print();
}

int main()
{
	// T t(1);
	Print(T(1));
	return 0;
}

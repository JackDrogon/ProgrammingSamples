#include <iostream>
#include <typeinfo>

struct Base {
	virtual ~Base() = default;
};

struct Derived : Base {
};

int main()
{
	Base b1;
	Derived d1;

	const Base *pb = &b1;
	std::cout << typeid(*pb).name() << '\n';
	pb = &d1;
	std::cout << typeid(*pb).name() << '\n';
}

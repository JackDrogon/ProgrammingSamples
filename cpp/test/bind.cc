#include <functional>
#include <iostream>
using namespace std;

class Type
{
public:
	void hello() { cout << "hello: " << value_ << endl; }

private:
	int value_;
};

int main()
{
	Type t;
	Type::hello(t);
	return 0;
}

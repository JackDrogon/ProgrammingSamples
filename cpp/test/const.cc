#include <iostream>
using namespace std;

class T
{
public:
	// default initialization of an object of const type 'const T' without a
	// user-provided default constructor
	T() {}
	void SetIndex(int index) { index_ = index; }
	auto GetIndex() { return index_; }

private:
	int index_;
};

int main()
{
	const T t;
	t.GetIndex();
	return 0;
}

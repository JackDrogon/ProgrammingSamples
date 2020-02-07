#include <iostream>
using namespace std;

class T {
public:
	T(int num) : num_(num) { cout << num << ": T ctor!" << endl; }
	T(const T& t) : num_(t.num_) { cout << "copy ctor" << endl; }
	~T() { cout << num_ << ": T dctor!" << endl; }

private:
	int num_;
};

const T& F()
{
	auto t = T(1);
	return T(2);
}


const T& G()
{
	auto t = T(1);
	return T(t);
}

int main()
{
	auto &t = F();

	cout << "------------------------" << endl;

	G();

	return 0;
}

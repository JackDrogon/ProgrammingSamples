#include <initializer_list>
#include <iostream>
using namespace std;

class Type
{
public:
	Type(int num) : num_(num) { cout << "Ctor " << num << endl; }
	~Type() { cout << "Dtor " << num_ << endl; }

	int Num() const { return num_; }

private:
	int num_;
};

int sum1(initializer_list<int> li)
{
	int sum = 0;
	for (auto &n : li) {
		sum += n;
	}
	return sum;
}

template <typename... AV>
inline int sum(const Type &a, const Type &b, const Type &c, const Type &d,
	       const Type &e, const AV &... args)
{
	return sum1({a.Num(), b.Num(), c.Num(), d.Num(), e.Num(),
		     static_cast<const Type &>(args).Num()...});
}

int main()
{
	cout << sum(0, 1, 2, 3, 4, 5, 6, 7, 8) << endl;
	return 0;
}

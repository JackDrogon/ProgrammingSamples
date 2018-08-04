#include <iostream>
#include <vector>
using namespace std;

// 测试move语义, vector resize优先使用move
// vector的 存储类似指针的结果 不用每次都释放全部
class Type {
public:
	~Type() { cout << "Type.num: " << num_ << endl; }
	Type(int num) : num_(num) {}
	Type(const Type &t) : num_(t.num_)
	{
		cout << "Type copy ctor, num: " << num_ << endl;
	}
	// noexcept 扩容就用move...
	Type(Type &&t) noexcept : num_(t.num_)
	{
		t.num_ = -t.num_;
		cout << "Type move ctor, num: " << num_ << endl;
	}
	// opeartor=()

private:
	int num_;
};

int main()
{
	vector<Type> vec;
	for (int i = 1; i < 20; ++i) {
		vec.emplace_back(i);
	}
	return 0;
}

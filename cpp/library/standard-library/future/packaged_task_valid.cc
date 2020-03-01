#include <future>
#include <ios>
#include <iostream>
using namespace std;

int main()
{
	packaged_task<void()> task; // 缺省构造、默认构造
	cout << boolalpha << task.valid() << endl; // false

	// NOTE: copy && operator= disable
	// packaged_task<void()> t(task);

	packaged_task<void()> task2(move(task));   // 右值构造
	cout << boolalpha << task.valid() << endl; // false

	task = packaged_task<void()>([]() {}); // 右值赋值, 可调用对象
	cout << boolalpha << task.valid() << endl; // true

	return 0;
}

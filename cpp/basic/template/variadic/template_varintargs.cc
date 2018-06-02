#include <functional>
#include <iostream>

using namespace std;


template<typename ...T> void DummyWrapper(T... t) {}

template <typename T>
T print(T t)
{
	cout << t;
	return t;
}

template <typename ...A>
void VTPrint(A... a)
{
	DummyWrapper(print(a)...);
}

template <typename Fn, typename... Args> void d_invoke(Fn &&f, Args &&... args)
{
	auto call = bind(std::forward<Fn>(f), std::forward<Args>(args)...);
	call();
}

int p1(int a, int b) { cout << a << " " << b << endl; }

int main()
{
	VTPrint(1, ", ", 1.2, ", abc\n");
	d_invoke(p1, 1, 2);
	return 0;
}

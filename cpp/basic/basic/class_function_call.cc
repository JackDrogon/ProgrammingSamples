#include <functional>
#include <iostream>
using namespace std;

struct T {
	void print(int i) { cout << i << endl; }
};

int main()
{
	T t;
	t.print(3);
	// &T::print(&t, 10);
	invoke(&T::print, &t, 10);

	return 0;
}

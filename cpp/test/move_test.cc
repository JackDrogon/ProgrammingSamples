#include <iostream>
#include <memory>
#include <string>
using namespace std;

struct Type {
	Type(int pi) : i(pi) { cout << "Ctor " << i << endl; }
	Type(Type &&t) : i(t.i)
	{
		t.i = 0;
		cout << "Move ctor " << i << endl;
	}
	~Type() { cout << "dctor " << i << endl; }
	int i;
};

// void f(string &&s) { cout << s + "11" << endl; }

// int main() {
//   string s = "hello";
//   cout << s << endl;
//   f(std::move(s));
//   cout << s << endl;
//   return 0;
// }
//

void f(Type &&t) { cout << "t.i " << t.i << endl; }

int main()
{
	Type t(10);
	cout << "t.i " << t.i << endl;
	f(std::move(t));
	cout << "t.i " << t.i << endl;
	return 0;
}

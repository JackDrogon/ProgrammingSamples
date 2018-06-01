#include <iostream>
using namespace std;

int main()
{
	char s[] = "hello,world!";
	string str(s, s + 5);
	cout << s[0] << " " << s[5] << " " << str << endl;
}

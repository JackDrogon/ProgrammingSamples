#include "arch-x86_64.h"

#include <iostream>
using namespace std;

int main()
{
	cout << get_cpu_clock() << endl;
	return 0;
}

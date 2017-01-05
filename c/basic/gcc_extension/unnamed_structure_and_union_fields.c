#include <stdio.h>


struct {
	int a;
	union {
		int b;
		float c;
	};
	int d;
} foo;

int main()
{
	foo.b = 10;
	
	return 0;
}

#include <stdio.h>


struct {
	int a;
	struct s {
		int b;
		float c;
	};
	int d;
} foo;

int main()
{
	// -fms-extensions
	foo.b = 10;
	
	return 0;
}

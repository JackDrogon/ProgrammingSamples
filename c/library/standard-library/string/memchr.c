#include <stdio.h>
#include <string.h>

int main()
{
	char *s = "Hello, World!";
	char *p;
	p = (char *)memchr(s, 'W', sizeof(s));
	if (p) {
		puts(p);
	} else {
		puts("Not Found");
	}

	return 0;
}

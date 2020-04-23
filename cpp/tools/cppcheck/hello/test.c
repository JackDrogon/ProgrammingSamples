#include <errno.h>
#include <stdio.h>

int main()
{
	FILE *fp = fopen("/tmp/test.txt", "we");
	if (fp == NULL) {
		printf("file is not writable, errno is %d\n", errno);
		return 1;
	}

	printf("file is writable\n");

	return 0;
}

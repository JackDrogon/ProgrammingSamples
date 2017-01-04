#include <stdio.h>

// TODO: Add bool ptrdiff_t

int main()
{
	printf("-------------------- Integer -------------------\n");
	printf("Short size: %lu.\n", sizeof(short));
	printf("Int size: %lu.\n", sizeof(int));
	printf("Long size: %lu.\n", sizeof(long));
	printf("Long Long size: %lu.\n", sizeof(long long));
	printf("\n");

	printf("-------------------- Float -------------------\n");
	printf("Float size: %lu.\n", sizeof(float));
	printf("Double size: %lu.\n", sizeof(double));
	printf("Long Double size: %lu.\n", sizeof(long double));
	printf("\n");

	printf("-------------------- Void && Pointer -------------------\n");
	printf("Void size: %lu.\n", sizeof(void));
	printf("Void * size: %lu.\n", sizeof(void *));

	return 0;
}

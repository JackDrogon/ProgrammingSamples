#include <stdio.h>
#include <stdlib.h>

struct T {
	int size;
	int data[];
};

int main()
{
	struct T *t = (struct T *)malloc(sizeof(struct T) + 10 * sizeof(int));
	printf("Size => T: %lu, int: %lu, blob: %lu\n", sizeof(struct T),
	       sizeof(int), sizeof *t);

	return 0;
}

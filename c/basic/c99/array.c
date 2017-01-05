#include <stdio.h>

#define arr_size(arr) (sizeof arr / sizeof arr[0])

#define print_arr_(arr) { \
	for (int i = 0; i < (int)arr_size(arr); ++i) { \
		printf("arr[%d] is %s.\n", i, arr[i]); \
	} \
} 

static inline void print_arr(char **arr, int length)
{
	for (int i = 0; i < length; ++i) {
		printf("arr[%d] is %s.\n", i, arr[i]);
	}
}

int main()
{
	char *const arr[] = {
		[0] = "max",
		[1] = "min",
		[3] = "Haha",
		NULL
	};

	printf("%lu\n", arr_size(arr));
	print_arr(arr, arr_size(arr));

	return 0;
}

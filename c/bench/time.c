#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char *argv[])
{
	int max = 100000000;
	if (argc >= 2) {
		max = atoi(argv[1]);
		if (max == 0) {
			fprintf(stderr,
				"Run %s times, times > 0 such as 100000000\n",
				argv[0]);
		}
	}
	time_t current_time;
	for (int i = 0; i < max; ++i)
		current_time = time(0);

	return 0;
}

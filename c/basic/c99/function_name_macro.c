#include <stdio.h>

int main(void)
{
	printf("__func__ is %s\n", __func__);
	printf("__PRETTY_FUNCTION__is %s\n", __PRETTY_FUNCTION__);

	return 0;
}

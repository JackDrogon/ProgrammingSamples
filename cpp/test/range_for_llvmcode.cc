#include <initializer_list>

int main()
{
	int j = 0;
	for (auto i : {1, 2, 3}) {
		j += i;
	}
	return 0;
}

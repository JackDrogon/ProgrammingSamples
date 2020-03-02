#include <iostream>
using namespace std;

#include <absl/time/clock.h>

int main()
{
	int64_t now_ms = absl::ToUnixMicros(absl::Now());
	cout << "NowMs: " << now_ms << endl;

	return 0;
}

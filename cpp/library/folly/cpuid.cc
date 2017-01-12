#include <folly/CpuId.h>

#include <iostream>
#include <iomanip>
using namespace std;

static inline void _print(const string &s, bool b)
{
	// TODO: boolalpha effect setw
	cout << "Support " << s << ": " << setw(10) << b << endl;
}

int main()
{
	cout.setf(ios_base::boolalpha);

	folly::CpuId id;
	_print("SSE42", id.sse42());
	_print("MMX", id.mmx());

	return 0;
}

#include <iostream>
using namespace std;

#include <absl/random/random.h>

namespace
{
constexpr uint64_t kMax = 10000;
}

int main()
{
	absl::InsecureBitGen gen;
	absl::zipf_distribution distribution(kMax);

	for (int i = 0; i < 300000; ++i) {
		cout << distribution(gen) << endl;
	}

	cout << absl::Zipf(gen, kMax) << endl;

	return 0;
}

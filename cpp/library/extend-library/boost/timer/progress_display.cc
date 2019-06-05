#include <iostream>
using namespace std;

#include <boost/progress.hpp>
using namespace boost;

namespace
{
constexpr int kMax = 100'000'000;
}

int main()
{
	progress_display display(kMax);
	for (auto i = 0; i < kMax; ++i) {
		++display;
	}
}

#include <folly/Benchmark.h>
#include <folly/FBVector.h>
#include <folly/container/Foreach.h>
#include <vector>

constexpr int COUNT = 100000;

BENCHMARK(insertBackVector)
{
	std::vector<int> v;
	v.reserve(COUNT);
	FOR_EACH_RANGE(i, 0, COUNT)
	{
		// v.insert(v.end(), i);
		v.push_back(i);
	}
}

BENCHMARK_RELATIVE(insertBackFBVector)
{
	folly::fbvector<int> fbv;
	fbv.reserve(COUNT);
	FOR_EACH_RANGE(i, 0, COUNT)
	{
		fbv.push_back(i);
		// fbv.insert(fbv.end(), i);
	}
}

BENCHMARK_DRAW_LINE();

BENCHMARK(insertFrontVector)
{
	std::vector<int> v;
	v.reserve(COUNT);
	FOR_EACH_RANGE(i, 0, COUNT) { v.insert(v.begin(), i); }
}

BENCHMARK_RELATIVE(insertFrontFBVector)
{
	folly::fbvector<int> fbv;
	fbv.reserve(COUNT);
	FOR_EACH_RANGE(i, 0, COUNT) { fbv.insert(fbv.begin(), i); }
}

int main() { folly::runBenchmarks(); }

#include <random>
#include <set>
using namespace std;

#include <benchmark/benchmark.h>

std::set<int64_t> ConstructRandomSet(int64_t size)
{
	std::set<int64_t> s;
	for (int i = 0; i < size; ++i) {
		s.insert(s.end(), i);
	}
	return s;
}

static int64_t RandomNumber()
{
	static std::mt19937 rd{std::random_device{}()};

	return rd();
}

// You might have a microbenchmark that depends on two inputs.  For
// example, the following code defines a family of microbenchmarks for
// measuring the speed of set insertion.
static void BM_SetInsert(benchmark::State &state)
{
	set<int64_t> data;
	for (auto _ : state) {
		state.PauseTiming();
		data = ConstructRandomSet(state.range(0));
		state.ResumeTiming();
		for (int j = 0; j < state.range(1); ++j) {
			data.insert(RandomNumber());
		}
	}
}
BENCHMARK(BM_SetInsert)
    ->Args({1 << 10, 128})
    ->Args({2 << 10, 128})
    ->Args({4 << 10, 128})
    ->Args({8 << 10, 128})
    ->Args({1 << 10, 512})
    ->Args({2 << 10, 512})
    ->Args({4 << 10, 512})
    ->Args({8 << 10, 512});

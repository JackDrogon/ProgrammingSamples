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
static void CustomArguments(benchmark::internal::Benchmark *b)
{
	for (int i = 0; i <= 10; ++i)
		for (int j = 32; j <= 1024 * 1024; j *= 8)
			b->Args({i, j});
}
BENCHMARK(BM_SetInsert)->Apply(CustomArguments);

BENCHMARK_MAIN();

#include <cstring>

#include <memory>

#include <benchmark/benchmark.h>

// Sometimes a family of microbenchmarks can be implemented with
// just one routine that takes an extra argument to specify which
// one of the family of benchmarks to run.  For example, the following
// code defines a family of microbenchmarks for measuring the speed
// of memcpy() calls of different lengths:
static void BM_memcpy(benchmark::State &state)
{
	auto src = std::make_unique<char[]>(state.range(0));
	auto dst = std::make_unique<char[]>(state.range(0));
	memset(src.get(), 'x', state.range(0));

	for (auto _ : state) {
		memcpy(dst.get(), src.get(), state.range(0));
	}

	state.SetBytesProcessed(state.iterations() * state.range(0));
}

// default multiplier is 8
// 8 16 64 256...
// not 8 32
// generate by: 4^2 = 16 > 8, 4 16 64... insert 8
BENCHMARK(BM_memcpy)->RangeMultiplier(4)->Range(8, 32 << 10);

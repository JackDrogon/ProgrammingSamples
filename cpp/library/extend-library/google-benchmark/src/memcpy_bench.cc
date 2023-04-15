#include <cstring>

#include <benchmark/benchmark.h>

// Sometimes a family of microbenchmarks can be implemented with
// just one routine that takes an extra argument to specify which
// one of the family of benchmarks to run.  For example, the following
// code defines a family of microbenchmarks for measuring the speed
// of memcpy() calls of different lengths:
static void BM_memcpy(benchmark::State &state)
{
	char *src = new char[state.range(0)];
	char *dst = new char[state.range(0)];
	memset(src, 'x', state.range(0));
	for (auto _ : state) {
		memcpy(dst, src, state.range(0));
	}
	state.SetBytesProcessed(state.iterations() * state.range(0));
	delete[] src;
	delete[] dst;
}
BENCHMARK(BM_memcpy)
    ->Arg(8)
    ->Arg(64)
    ->Arg(512)
    ->Arg(1 << 10)
    ->Arg(2 << 10)
    ->Arg(4 << 10)
    ->Arg(8 << 10)
    ->Arg(16 << 10)
    ->Arg(32 << 10);

#include <atomic>

#include <benchmark/benchmark.h>

static void AtomicIntIncr(benchmark::State &state)
{
	std::atomic<int> n{0};
	for (auto _ : state) {
		// lock xaddl>-%eax, n(%rip)
		benchmark::DoNotOptimize(++n);
	}
}
BENCHMARK(AtomicIntIncr);
BENCHMARK(AtomicIntIncr)->Threads(2);
BENCHMARK(AtomicIntIncr)->Threads(4);
BENCHMARK(AtomicIntIncr)->Threads(8);
BENCHMARK(AtomicIntIncr)->Threads(16);
BENCHMARK(AtomicIntIncr)->Threads(32);
BENCHMARK(AtomicIntIncr)->Threads(64);

std::atomic<int> n{13};
static void AtomicIntLoad(benchmark::State &state)
{
	int p = 10;
	for (auto _ : state) {
		// movl>---n(%rip), %edx
		benchmark::DoNotOptimize(p = n.load());
	}
}
BENCHMARK(AtomicIntLoad);
BENCHMARK(AtomicIntLoad)->Threads(2);
BENCHMARK(AtomicIntLoad)->Threads(4);
BENCHMARK(AtomicIntLoad)->Threads(8);
BENCHMARK(AtomicIntLoad)->Threads(16);
BENCHMARK(AtomicIntLoad)->Threads(32);
BENCHMARK(AtomicIntLoad)->Threads(64);

// ----------------------------------------------------------------
// Benchmark                         Time           CPU Iterations
// ----------------------------------------------------------------
// AtomicIntIncr                     6 ns          6 ns  119748623
// AtomicIntIncr/threads:2          10 ns         20 ns   34279558
// AtomicIntIncr/threads:4          15 ns         62 ns    8157660
// AtomicIntIncr/threads:8          21 ns        169 ns    4958600
// AtomicIntIncr/threads:16         17 ns        279 ns    2359072
// AtomicIntIncr/threads:32         18 ns        587 ns    1405536
// AtomicIntIncr/threads:64         17 ns       1088 ns     640000
// AtomicIntLoad                     0 ns          0 ns 1000000000
// AtomicIntLoad/threads:2           0 ns          0 ns 2000000000
// AtomicIntLoad/threads:4           0 ns          0 ns 2162081740
// AtomicIntLoad/threads:8           0 ns          0 ns 2159402120
// AtomicIntLoad/threads:16          0 ns          0 ns 1731760912
// AtomicIntLoad/threads:32          0 ns          1 ns 1582786816
// AtomicIntLoad/threads:64          0 ns          1 ns 1279645184

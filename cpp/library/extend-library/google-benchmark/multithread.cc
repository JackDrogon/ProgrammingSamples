#include <benchmark/benchmark.h>

void BM_pause_during(benchmark::State &state)
{
	for (auto _ : state) {
		state.PauseTiming();
		state.ResumeTiming();
	}
}
BENCHMARK(BM_pause_during);
BENCHMARK(BM_pause_during)->Threads(2);
BENCHMARK(BM_pause_during)->ThreadPerCpu();
BENCHMARK(BM_pause_during)->UseRealTime();
BENCHMARK(BM_pause_during)->UseRealTime()->ThreadPerCpu();

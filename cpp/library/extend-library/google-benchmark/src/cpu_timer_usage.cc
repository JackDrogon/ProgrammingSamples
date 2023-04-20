#include "benchmark/benchmark.h"

void callee(int i);

static void MyMain(int size)
{
#pragma omp parallel for
	for (int i = 0; i < size; i++)
		callee(i);
}

static void BM_OpenMP(benchmark::State &state)
{
	for (auto _ : state)
		MyMain(state.range(0));
}

// Measure the time spent by the main thread, use it to decide for how long to
// run the benchmark loop. Depending on the internal implementation detail may
// measure to anywhere from near-zero (the overhead spent before/after work
// handoff to worker thread[s]) to the whole single-thread time.
BENCHMARK(BM_OpenMP)->Range(8, 8 << 10);

// Measure the user-visible time, the wall clock (literally, the time that
// has passed on the clock on the wall), use it to decide for how long to
// run the benchmark loop. This will always be meaningful, an will match the
// time spent by the main thread in single-threaded case, in general decreasing
// with the number of internal threads doing the work.
BENCHMARK(BM_OpenMP)->Range(8, 8 << 10)->UseRealTime();

// Measure the total CPU consumption, use it to decide for how long to
// run the benchmark loop. This will always measure to no less than the
// time spent by the main thread in single-threaded case.
BENCHMARK(BM_OpenMP)->Range(8, 8 << 10)->MeasureProcessCPUTime();

// A mixture of the last two. Measure the total CPU consumption, but use the
// wall clock to decide for how long to run the benchmark loop.
BENCHMARK(BM_OpenMP)->Range(8, 8 << 10)->MeasureProcessCPUTime()->UseRealTime();

#include <benchmark/benchmark.h>

template <class... Args> void BM_with_args(benchmark::State &state, Args &&...)
{
	for (auto _ : state) {
	}
}
BENCHMARK_CAPTURE(BM_with_args, int_test, 42, 43, 44);
BENCHMARK_CAPTURE(BM_with_args, string_and_pair_test, std::string("abc"),
		  std::pair<int, double>(42, 3.8));

void BM_non_template_args(benchmark::State &state, int, double)
{
	while (state.KeepRunning()) {
	}
}
BENCHMARK_CAPTURE(BM_non_template_args, basic_test, 0, 0);

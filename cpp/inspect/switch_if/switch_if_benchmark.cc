#include <benchmark/benchmark.h>

namespace
{
constexpr int iteration = 30'000'000;

static void BM_nothing(benchmark::State &state)
{
	volatile int n{0};
	while (state.KeepRunning()) {
		for (int i = 0; i < iteration; ++i) {
			i += n;
		}
	}
}
} // namespace

namespace p3
{
static void BM_switch(benchmark::State &state)
{
	volatile int n{0};
	while (state.KeepRunning()) {
		for (int i = 0; i < iteration; ++i) {
			switch (i % 3) {
			case 0:
				n += 10;
				break;
			case 1:
				n += 13;
				break;
			default:
				n += 33;
				break;
			}
		}
	}
}

static void BM_if(benchmark::State &state)
{
	volatile int n{0};
	while (state.KeepRunning()) {
		for (int i = 0; i < iteration; ++i) {
			auto m = i % 3;
			if (m == 0) {
				n += 10;
			} else if (m == 1) {
				n += 13;
			} else {
				n += 33;
			}
		}
	}
}

} // namespace p3

namespace p4
{
static void BM_switch(benchmark::State &state)
{
	volatile int n{0};
	while (state.KeepRunning()) {
		for (int i = 0; i < iteration; ++i) {
			switch (i % 4) {
			case 0:
				n += 10;
				break;
			case 1:
				n += 13;
				break;
			case 2:
				n += 15;
				break;
			case 3:
				n += 33;
				break;
			}
		}
	}
}

static void BM_if(benchmark::State &state)
{
	volatile int n{0};
	while (state.KeepRunning()) {
		for (int i = 0; i < iteration; ++i) {
			auto m = i % 4;
			if (m == 0) {
				n += 10;
			} else if (m == 1) {
				n += 13;
			} else if (m == 2) {
				n += 15;
			} else {
				n += 33;
			}
		}
	}
}
} // namespace p4

BENCHMARK(BM_nothing);
BENCHMARK(p3::BM_switch);
BENCHMARK(p3::BM_if);
BENCHMARK(p4::BM_switch);
BENCHMARK(p4::BM_if);

BENCHMARK_MAIN();

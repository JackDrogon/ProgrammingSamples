#include <cassert>

#include <memory>

#include "benchmark/benchmark.h"

using namespace std;

class MyFixture : public ::benchmark::Fixture
{
public:
	void SetUp(const ::benchmark::State &state)
	{
		if (state.thread_index() == 0) {
			assert(data.get() == nullptr);

			data = std::make_unique<int>(42);
		}
	}

	void TearDown(const ::benchmark::State &state)
	{
		if (state.thread_index() == 0) {
			assert(data.get() != nullptr);

			data.reset();
		}
	}

	~MyFixture() { assert(data == nullptr); }

	std::unique_ptr<int> data;
};

BENCHMARK_F(MyFixture, Foo)(benchmark::State &state)
{
	assert(data.get() != nullptr);
	assert(*data == 42);

	for (auto _ : state) {
	}
}

BENCHMARK_DEFINE_F(MyFixture, Bar)(benchmark::State &state)
{
	if (state.thread_index() == 0) {
		assert(data.get() != nullptr);
		assert(*data == 42);
	}

	for (auto _ : state) {
		assert(data.get() != nullptr);
		assert(*data == 42);
	}
	state.SetItemsProcessed(state.range(0));
}
BENCHMARK_REGISTER_F(MyFixture, Bar)->Arg(42);
BENCHMARK_REGISTER_F(MyFixture, Bar)->Arg(42)->ThreadPerCpu();

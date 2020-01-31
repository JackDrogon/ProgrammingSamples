#include <atomic>
#include <chrono>
#include <iostream>
#include <thread>
#include <vector>
using namespace std;
using namespace std::chrono_literals;

#include <absl/synchronization/barrier.h>

namespace
{
constexpr size_t kNumThreads = 10;
} // namespace

int main()
{
	atomic<int> counter{0};
	auto *barrier = new absl::Barrier(kNumThreads);
	vector<thread> threads;
	threads.reserve(kNumThreads);

	auto f = [barrier, &counter] {
		if (barrier->Block()) {
			// This thread is the last thread to reach the
			// barrier so it is responsible for deleting it.
			delete barrier;
		}

		// Increment the counter.
		++counter;
	};

	// Start (kNumThreads - 1) threads
	for (size_t i = 0; i < kNumThreads - 1; ++i) {
		threads.emplace_back(f);
	}

	// Give (kNumThreads - 1) threads a chance to reach the barrier.
	// This test assumes at least one thread will have run after the
	// sleep has elapsed. Sleeping in a test is usually bad form, but we
	// need to make sure that we are testing the barrier instead of some
	// other synchronization method.
	this_thread::sleep_for(1s);

	// The counter should still be zero since no thread should have
	// been able to pass the barrier yet.
	// EXPECT_EQ(counter, 0);

	// Start 1 more thread. This should make all threads pass the barrier.
	threads.emplace_back(f);

	// All threads should now be able to proceed and finish.
	for (auto &thread : threads) {
		thread.join();
	}

	// All threads should now have incremented the counter.
	if (counter != kNumThreads) {
		abort();
	}

	return 0;
}

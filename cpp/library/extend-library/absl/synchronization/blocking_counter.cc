#include <iostream>
#include <thread>
#include <vector>
using namespace std;

#include <absl/synchronization/blocking_counter.h>

namespace
{
constexpr size_t kCounter = 10;
}

int main()
{
	absl::BlockingCounter wg(kCounter);
	vector<thread> threads;
	vector<bool> done(kCounter, false);
	threads.reserve(kCounter);

	for (size_t i = 0; i < kCounter; ++i) {
		threads.emplace_back([&wg, done = &done[i]] {
			*done = true;
			wg.DecrementCount();
		});
	}
	wg.Wait();
	cout << "Counter end to 0" << endl;

	for (auto &&d : done) {
		if (d != true) {
			cerr << "Thread run done is false" << endl;
		}
	}

	for (auto &thread : threads) {
		if (thread.joinable()) {
			thread.join();
		}
	}

	return 0;
}

#include <iostream>
#include <thread>
#include <vector>
using namespace std;

#include <absl/synchronization/blocking_counter.h>

namespace
{
constexpr auto kCounter = 10;
}

int main()
{
	absl::BlockingCounter wg(kCounter);
	vector<thread> threads;

	for (int i = 0; i < kCounter; ++i) {
		threads.emplace_back([&wg] { wg.DecrementCount(); });
	}
	wg.Wait();
	cout << "Counter end to 0" << endl;

	for (auto &thread : threads) {
		if (thread.joinable()) {
			thread.join();
		}
	}

	return 0;
}

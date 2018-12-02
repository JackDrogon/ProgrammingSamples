#include <atomic>
#include <iostream>
#include <thread>
#include <vector>
using namespace std;

namespace // prevent std::lock
{

atomic_flag lock = ATOMIC_FLAG_INIT;

void run(int n)
{
	for (auto cnt = 0; cnt < 100; ++cnt) {
		while (lock.test_and_set(std::memory_order_acquire))
			;
		std::cout << "Output " << cnt << " from thread " << n << '\n';
		lock.clear(std::memory_order_release); // release lock
	}
}

} // namespace

int main()
{
	std::vector<std::thread> threads;
	for (int n = 0; n < 10; ++n) {
		threads.emplace_back(run, n);
	}
	for (auto &thread : threads) {
		thread.join();
	}

	return 0;
}

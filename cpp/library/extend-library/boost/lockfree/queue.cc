#include <atomic>
#include <iostream>
#include <thread>
#include <vector>
using namespace std;

#include <boost/lockfree/queue.hpp>
using namespace boost;

namespace
{
constexpr int iterations{10'000'000};
constexpr int producer_thread_cnt{4};
constexpr int consumer_thread_cnt{4};

atomic_int producer_cnt{0};
atomic_int consumer_cnt{0};
atomic_bool done{false};

lockfree::queue<int> queue{128};

} // namespace

int main()
{
	cout << "boost::lockfree::queue is ";
	if (!queue.is_lock_free()) {
		cout << "not ";
	}
	cout << "lockfree" << endl;

	vector<thread> producer_threads;
	for (auto i = 0; i < producer_thread_cnt; ++i) {
		producer_threads.emplace_back([] {
			for (auto i = 0; i < iterations; ++i) {
				int value = ++producer_cnt;
				while (!queue.push(value))
					;
			}
		});
	}

	vector<thread> consumer_threads;
	for (auto i = 0; i < consumer_thread_cnt; ++i) {
		consumer_threads.emplace_back([] {
			int value;
			while (!done && queue.pop(value)) {
				++consumer_cnt;
			}

			// for remain elements
			while (queue.pop(value)) {
				++consumer_cnt;
			}
		});
	}

	for (auto &thread : producer_threads) {
		thread.join();
	}
	done = true;
	for (auto &thread : consumer_threads) {
		thread.join();
	}

	cout << "produced " << producer_cnt << " objects." << endl;
	cout << "consumed " << consumer_cnt << " objects." << endl;

	return 0;
}

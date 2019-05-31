#include <iostream>
#include <thread>
#include <vector>
#include <atomic>
using namespace std;

#include <boost/lockfree/spsc_queue.hpp>
using namespace boost;

namespace
{

int producer_cnt{0};
atomic_int consumer_cnt{0};
atomic_bool done{false};

lockfree::spsc_queue<int, lockfree::capacity<1024>> spsc_queue;

constexpr int iterations = 10'000'000;

} // namespace

int main()
{
	cout << "boost::lockfree::spsc_queue is "
	     << (spsc_queue.is_lock_free() ? "" : "not ") << "lockfree" << endl;

	thread producer_thread([] {
		for (auto i = 0; i < iterations; ++i) {
			int value = ++producer_cnt;
			while (!spsc_queue.push(value))
				;
		}
	});
	thread consumer_thread([] {
		int value;
		// TODO(THINK): !done && spsc_queue.pop(value) high cpu usage,
		// much slow, check atomic each time
		// while (!done && spsc_queue.pop(value)) {
		while (!done) {
			while (spsc_queue.pop(value)) {
				++consumer_cnt;
			}
		}

		while (spsc_queue.pop(value)) {
			++consumer_cnt;
		}
	});

	producer_thread.join();
	done = true;
	consumer_thread.join();

	cout << "produced " << producer_cnt << " objects." << endl;
	cout << "consumed " << consumer_cnt << " objects." << endl;

	return 0;
}

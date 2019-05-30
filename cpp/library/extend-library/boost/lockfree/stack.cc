#include <atomic>
#include <iostream>
#include <thread>
#include <vector>
using namespace std;

#include <boost/lockfree/stack.hpp>
using namespace boost;

atomic_int producer_count(0);
atomic_int consumer_count(0);

lockfree::stack<int> stack(128);

const int iterations = 1000000;
const int producer_thread_count = 4;
const int consumer_thread_count = 4;

void producer(void)
{
	for (int i = 0; i != iterations; ++i) {
		int value = ++producer_count;
		while (!stack.push(value))
			;
	}
}

atomic<bool> done(false);

void consumer(void)
{
	int value;
	while (!done) {
		while (stack.pop(value))
			++consumer_count;
	}

	while (stack.pop(value)) {
		++consumer_count;
	}
}

int main(int argc, char *argv[])
{
	using namespace std;
	cout << "boost::lockfree::stack is ";
	if (!stack.is_lock_free())
		cout << "not ";
	cout << "lockfree" << endl;

	vector<thread> producer_threads, consumer_threads;

	for (int i = 0; i != producer_thread_count; ++i) {
		producer_threads.emplace_back(producer);
	}

	for (int i = 0; i != consumer_thread_count; ++i) {
		consumer_threads.emplace_back(consumer);
	}

	for (auto &thread : producer_threads) {
		thread.join();
	}

	done = true;

	for (auto &thread : consumer_threads) {
		thread.join();
	}

	cout << "produced " << producer_count << " objects." << endl;
	cout << "consumed " << consumer_count << " objects." << endl;
}

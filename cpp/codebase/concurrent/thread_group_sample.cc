#include "thread_group.hh"
using archimedes::concurrent::ThreadGroup;

#include <atomic>
#include <chrono>
#include <iostream>
#include <thread>
using namespace std;

atomic<long> f_cnt{0};
auto f(int b, int e) -> void
{
	using namespace std::chrono_literals;
	for (auto i = b; i < e; ++i) {
		++f_cnt;
		cout << "f: " << i << endl;
	}
	this_thread::sleep_for(2s);
}

int main() {
	ThreadGroup tg;

	atomic<long> lambda_cnt{0};
	tg.Add([&lambda_cnt] {
		for (int i = 0; i < 10; ++i) {
			++lambda_cnt;
			cout << i << endl;
		}
	});

	thread thrd(f, 30, 50);
	tg.Add(std::move(thrd));

	tg.JoinAll();

	cout << "Lambda counter: " << lambda_cnt << endl;
	cout << "F counter: " << f_cnt << endl;

	return 0;
}

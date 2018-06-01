#include <iostream>
#include <thread>
#include <vector>

using namespace std;

thread_local int cnt = 0;

int func() { cout << cnt++ << '\n'; }

int main()
{
	vector<thread> threads;
	for (int i = 0; i < 10; ++i) {
		threads.emplace_back(thread(func));
	}
	for (auto &thread : threads) {
		thread.join();
	}

	return 0;
}

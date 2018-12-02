#include <iostream>
#include <atomic>
#include <thread>
#include <vector>
using namespace std;

void fun(atomic_int &ai)
{
	for (int i = 0; i < 100000; ++i) {
		++ai;
	}
	cout << ai << endl;
}

int main()
{
	std::atomic_int ai(0);
	cout << ai.is_lock_free() << endl;
	cout << ai.is_always_lock_free << endl;

	cout << ai << endl;

	vector<thread> ths;

	for (int i = 0; i < 10; ++i) {
		ths.push_back(thread(fun, std::ref(ai)));
	}

	for (auto &th: ths) {
		th.join();
	}

	return 0;
}

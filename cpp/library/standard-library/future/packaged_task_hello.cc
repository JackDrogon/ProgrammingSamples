#include <future>
#include <iostream>
#include <thread>
using namespace std;

namespace
{
auto fib(int n)
{
	if (n < 3) {
		return 1;
	}

	return fib(n - 1) + fib(n - 2);
}
} // namespace

int main()
{
	packaged_task<int(int)> fib_task(&fib);

	cout << "starting task\n";
	auto result = fib_task.get_future();
	thread t(move(fib_task), 40);

	cout << "waiting for task to finish...\n";
	cout << result.get() << '\n';

	cout << "task complete\n";
	t.join();

	return 0;
}

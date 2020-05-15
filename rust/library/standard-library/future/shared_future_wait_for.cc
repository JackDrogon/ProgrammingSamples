#include <chrono>
#include <future>
#include <iostream>
#include <thread>
using namespace std;

int main()
{
	shared_future<int> future = async(launch::async, []() {
		this_thread::sleep_for(3s);
		return 88;
	});

	cout << "waiting..." << endl;

	future_status status;
	do {
		status = future.wait_for(1s);

		switch (status) {
		case future_status::deferred:
			cout << "deferred" << endl;
			break;
		case future_status::timeout:
			cout << "timeout" << endl;
			break;
		case future_status::ready:
			cout << "ready!" << endl;
		}
	} while (status != future_status::ready);

	cout << "result is " << future.get() << endl;
}

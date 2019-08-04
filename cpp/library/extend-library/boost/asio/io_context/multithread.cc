#include <atomic>
#include <iostream>
#include <memory>
#include <thread>
#include <vector>
using namespace std;

#include <boost/asio.hpp>

int main()
{
	boost::asio::io_context io_context;
	atomic_int cnt = 0;

	auto worker = make_shared<boost::asio::io_context::work>(io_context);
	cout << "Press ENTER key to quit!" << endl;

	vector<thread> threads;
	for (int i = 0; i < 5; ++i) {
		threads.emplace_back([&] {
			cout << ++cnt << '\n';
			io_context.run();
			cout << "End.\n";
		});
	}

	cin.get();

	worker.reset();
	for (auto &thread : threads) {
		if (thread.joinable()) {
			thread.join();
		}
	}
	io_context.run();

	return 0;
}

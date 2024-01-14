#pragma once

#include <mutex>

class CountDownLatch final
{
public:
	explicit CountDownLatch(unsigned int count);

	~CountDownLatch() = default;
	CountDownLatch(const CountDownLatch &) = delete;
	CountDownLatch &operator=(const CountDownLatch &) = delete;

	void Wait();
	void CountDown();
	unsigned int GetCount() const;

private:
	unsigned int count_;
	mutable std::mutex mutex_{};
	std::condition_variable cv_;
};

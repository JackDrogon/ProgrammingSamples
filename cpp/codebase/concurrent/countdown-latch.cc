#include "countdown-latch.hh"

CountDownLatch::CountDownLatch(unsigned int count) : count_(count) {}
void CountDownLatch::CountDown()
{
	std::unique_lock lock(mutex_);
	assert(count_ > 0);
	if (--count_ == 0) {
		cv_.notify_all();
	}
}

unsigned int CountDownLatch::GetCount() const
{
	std::unique_lock lock(mutex_);
	return count_;
}

void CountDownLatch::Wait()
{
	std::unique_lock lock(mutex_);
	cv_.wait(lock, [this] { return count_ == 0; });
}

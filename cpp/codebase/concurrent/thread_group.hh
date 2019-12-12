#pragma once

#include <mutex>
#include <shared_mutex>
#include <thread>
#include <vector>

namespace archimedes::concurrent
{
class ThreadGroup
{
private:
	ThreadGroup(ThreadGroup const &);
	ThreadGroup &operator=(ThreadGroup const &);

public:
	ThreadGroup() = default;
	~ThreadGroup() = default;

	bool IsThreadIn(const decltype(std::thread().get_id()) &id) const;
	bool IsThreadIn() const;
	bool IsThreadIn(const std::thread &thread) const;

	void Add(std::thread &&thread);
	template <class Function, class... Args>
	void Add(Function &&f, Args &&... args);

	void JoinAll();

	size_t Size() const;

private:
	mutable std::shared_mutex mutex_;
	std::vector<std::thread> threads_;
};

bool ThreadGroup::IsThreadIn(const decltype(std::thread().get_id()) &id) const
{
	std::shared_lock lock(mutex_);

	for (auto &thread : threads_) {
		if (id == thread.get_id()) {
			return true;
		}
	}
	return false;
}

bool ThreadGroup::IsThreadIn() const
{
	return IsThreadIn(std::this_thread::get_id());
}

bool ThreadGroup::IsThreadIn(const std::thread &thread) const
{
	return IsThreadIn(thread.get_id());
}

template <class Function, class... Args>
void ThreadGroup::Add(Function &&f, Args &&... args)
{
	std::unique_lock lock(mutex_);

	threads_.emplace_back(std::forward<Function>(f),
			      std::forward<Args>(args)...);
}

void ThreadGroup::Add(std::thread &&thread)
{
	if (IsThreadIn(thread)) {
		throw "ThreadGroup: trying to add a duplicated thread";
	}

	std::unique_lock lock(mutex_);

	threads_.push_back(std::move(thread));
}

void ThreadGroup::JoinAll()
{
	if (IsThreadIn()) {
		throw "ThreadGroup: trying joining itself";
	}
	std::shared_lock lock(mutex_);

	for (auto &thread : threads_) {
		if (thread.joinable()) {
			thread.join();
		}
	}
}

size_t ThreadGroup::Size() const
{
	std::shared_lock lock(mutex_);

	return threads_.size();
}
} // namespace archimedes::concurrent

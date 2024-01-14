#pragma once

#include <mutex>
#include <shared_mutex>
#include <thread>
#include <vector>

namespace archimedes::concurrent
{
class ThreadGroup
{
public:
	ThreadGroup(ThreadGroup const &) = delete;
	ThreadGroup &operator=(ThreadGroup const &) = delete;

	ThreadGroup() = default;
	~ThreadGroup() = default;

	bool IsThreadIn(const decltype(std::thread().get_id()) &id) const;
	auto IsThreadIn(const std::thread &thread) const
	{
		return IsThreadIn(thread.get_id());
	}
	auto IsThreadIn() const
	{
		return IsThreadIn(std::this_thread::get_id());
	}

	void Add(std::thread &&thread);
	template <class Function, class... Args>
	void Add(Function &&f, Args &&... args);

	void JoinAll();

	auto Size() const -> size_t;

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

auto ThreadGroup::Size() const -> size_t
{
	std::shared_lock lock(mutex_);

	return threads_.size();
}
} // namespace archimedes::concurrent

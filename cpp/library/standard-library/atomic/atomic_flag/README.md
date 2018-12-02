
atomic_flag
bool test_and_set(std::memory_order order = std::memory_order_seq_cst) volatile noexcept; (1)	(since C++11)
bool test_and_set(std::memory_order order = std::memory_order_seq_cst) noexcept; (2)	(since C++11)
atomic_flag vs call_once， 性能对比

std::atomic_flag is an atomic boolean type. Unlike all specializations of std::atomic, it is guaranteed to be lock-free. Unlike std::atomic<bool>, std::atomic_flag does not provide load or store operations.

atomic_flag lock = ATOMIC_FLAG_INIT;

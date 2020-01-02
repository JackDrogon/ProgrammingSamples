add_executable(mutex mutex.cc)
target_link_libraries(mutex absl::synchronization)

add_executable(blocking_counter blocking_counter.cc)
target_link_libraries(blocking_counter absl::synchronization)

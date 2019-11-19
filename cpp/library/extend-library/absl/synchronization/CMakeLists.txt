add_executable(mutex mutex.cc)
add_executable(blocking_counter blocking_counter.cc)

# Declare dependency on the absl:strings library
target_link_libraries(mutex absl::synchronization)
target_link_libraries(blocking_counter absl::synchronization)

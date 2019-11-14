add_executable(mutex mutex.cc)

# Declare dependency on the absl:strings library
target_link_libraries(mutex absl::synchronization)

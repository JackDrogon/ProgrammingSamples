add_executable(memcpy_test memcpy_test.cc)
target_link_libraries(memcpy_test benchmark::benchmark_main)

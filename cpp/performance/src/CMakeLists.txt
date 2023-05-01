# message("benchmark_INCLUDE_DIRS: ${benchmark_INCLUDE_DIRS} ${benchmark_INCLUDE_DIRECTORIES}")
add_executable(visitor visitor.cc)
# add_subdirectory(benchmark)
# target_include_directories(visitor benchmark::benchmark)
target_link_libraries(visitor benchmark::benchmark_main) # FIXME: 为什么会添加/usr/local/include

add_executable(atomic atomic.cc)
target_link_libraries(atomic benchmark::benchmark_main)

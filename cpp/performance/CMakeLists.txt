cmake_minimum_required(VERSION 3.11)

project(cpp_performance)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS_RELEASE "-O3")

include(FeatureSummary)
# ===========================================================
# find_package(benchmark REQUIRED)
find_package(benchmark REQUIRED)
set_package_properties(benchmark PROPERTIES
  TYPE REQUIRED
  DESCRIPTION "a microbenchmark support library"
  URL "https://github.com/google/benchmark"
)
# message("benchmark_INCLUDE_DIRS: ${benchmark_INCLUDE_DIRS} ${benchmark_INCLUDE_DIRECTORIES}")
add_executable(visitor visitor.cc)
# add_subdirectory(benchmark)
# target_include_directories(visitor benchmark::benchmark)
target_link_libraries(visitor benchmark::benchmark_main) # FIXME: 为什么会添加/usr/local/include

add_executable(atomic atomic.cc)
target_link_libraries(atomic benchmark::benchmark_main)

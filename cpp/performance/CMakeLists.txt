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

add_subdirectory(src)

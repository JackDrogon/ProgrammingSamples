cmake_minimum_required(VERSION 3.11)

project(cpp_performance)

set(CMAKE_CXX_STANDARD 20)

# set(CMAKE_CXX_FLAGS_RELEASE "-O3 -g3 -ggdb -fno-omit-frame-pointer")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -g3 -ggdb -fno-omit-frame-pointer -flto")

include(FeatureSummary)

# ===========================================================
find_package(benchmark REQUIRED)
set_package_properties(benchmark PROPERTIES
  TYPE REQUIRED
  DESCRIPTION "a microbenchmark support library"
  URL "https://github.com/google/benchmark"
)

message("benchmark_INCLUDE_DIRS: ${benchmark_INCLUDE_DIRS} ${benchmark_INCLUDE_DIRECTORIES}")
# ===========================================================

add_subdirectory(src)

cmake_minimum_required(VERSION 3.11)

project(abseil_samples)

include(FetchContent)

set(CMAKE_CXX_STANDARD 17)

# ===========================================================
# Process Abseil's CMake build system
FetchContent_Declare(
  abseil
  GIT_REPOSITORY https://github.com/abseil/abseil-cpp
  GIT_TAG        20210324.2
)

FetchContent_MakeAvailable(abseil)

# ===========================================================
add_subdirectory(algorithm)
add_subdirectory(container)
add_subdirectory(debugging)
add_subdirectory(random)
add_subdirectory(strings)
add_subdirectory(synchronization)
add_subdirectory(time)
add_subdirectory(types)
add_subdirectory(flags)

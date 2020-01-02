cmake_minimum_required(VERSION 3.11)

project(abseil_samples)

include(FetchContent)

set(CMAKE_CXX_STANDARD 17)

# Process Abseil's CMake build system
FetchContent_Declare(
  abseil
  GIT_REPOSITORY https://github.com/abseil/abseil-cpp
  GIT_TAG        20200225.1
)

FetchContent_GetProperties(abseil)
if(NOT abseil_POPULATED)
  FetchContent_Populate(abseil)
  add_subdirectory(${abseil_SOURCE_DIR} ${abseil_BINARY_DIR})
endif()

add_subdirectory(strings)
add_subdirectory(synchronization)
add_subdirectory(random)

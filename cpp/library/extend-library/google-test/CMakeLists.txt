cmake_minimum_required(VERSION 3.11)

project(gtest_samples)

include(FetchContent)

set(CMAKE_CXX_STANDARD 17)


# ===========================================================
# Process GoogleTest's CMake build system
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.10.0
)

FetchContent_GetProperties(googletest)
if(NOT googletest_POPULATED)
  FetchContent_Populate(googletest)
  add_subdirectory(${googletest_SOURCE_DIR} ${googletest_BINARY_DIR})
endif()


# ===========================================================
enable_testing() # Must be in main file
add_subdirectory(gtest)

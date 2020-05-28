cmake_minimum_required(VERSION 3.11)

project(spdlog_samples)

include(FetchContent)

set(CMAKE_CXX_STANDARD 17)

# Process spdlog's CMake build system
FetchContent_Declare(
  spdlog
  GIT_REPOSITORY https://github.com/gabime/spdlog
  # GIT_TAG        v1.6.1
)

FetchContent_GetProperties(spdlog)
if(NOT spdlog_POPULATED)
  FetchContent_Populate(spdlog)
  add_subdirectory(${spdlog_SOURCE_DIR} ${spdlog_BINARY_DIR})
endif()

add_subdirectory(hello)

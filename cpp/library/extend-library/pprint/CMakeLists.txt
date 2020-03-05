cmake_minimum_required(VERSION 3.11)

project(pprint_samples)

include(FetchContent)

set(CMAKE_CXX_STANDARD 17)

# Process Magic Enum's CMake build system
FetchContent_Declare(
  pprint
  GIT_REPOSITORY https://github.com/p-ranav/pprint
)

FetchContent_GetProperties(pprint)
if(NOT pprint_POPULATED)
  FetchContent_Populate(pprint)
  add_library(pprint INTERFACE)
  target_include_directories(pprint INTERFACE ${pprint_SOURCE_DIR}/include)
endif()

add_subdirectory(hello)

cmake_minimum_required(VERSION 3.11)

project(magic_enum_samples)

include(FetchContent)

set(CMAKE_CXX_STANDARD 17)

# Process Magic Enum's CMake build system
FetchContent_Declare(
  magic_enum
  GIT_REPOSITORY https://github.com/Neargye/magic_enum
  # GIT_TAG        20200225.1
)

FetchContent_GetProperties(magic_enum)
if(NOT magic_enum_POPULATED)
  FetchContent_Populate(magic_enum)
  add_library(magic_enum INTERFACE)
  target_include_directories(magic_enum INTERFACE ${magic_enum_SOURCE_DIR}/include)
endif()

add_subdirectory(hello)

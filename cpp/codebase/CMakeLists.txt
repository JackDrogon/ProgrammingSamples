cmake_minimum_required(VERSION 3.11)

project(cpp_codebase)

# Basic Config
set(CMAKE_EXPORT_COMPILE_COMMANDS 1) # Write compile_commands.json

# Ccache
include (cmake/ccache.cmake)

# Cpp Language Standard && Compiler Flags
set(CMAKE_CXX_STANDARD 20)
# set(CMAKE_CXX_FLAGS "-fno-omit-frame-pointer -flto")
# -fcf-protection=none intel cet protector, endbr64
set(CMAKE_CXX_FLAGS "-fno-omit-frame-pointer -g")

# add dependencies
include(cmake/CPM.cmake)
# CPMAddPackage(
# 	NAME benchmark
# 	GITHUB_REPOSITORY google/benchmark
# 	VERSION 1.5.3
# 	OPTIONS "BENCHMARK_ENABLE_TESTING Off"
# )
CPMAddPackage("gh:catchorg/Catch2@3.0.0-preview5")

# Catch2_SOURCE_DIR
message(${Catch2_SOURCE_DIR}/extras)
list(APPEND CMAKE_MODULE_PATH ${Catch2_SOURCE_DIR}/extras)


include(CTest)
include(Catch)

add_subdirectory(archimedes)

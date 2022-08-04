cmake_minimum_required(VERSION 3.11)

project(boost-di-sample)

# Basic Config
set(CMAKE_EXPORT_COMPILE_COMMANDS 1) # Write compile_commands.json
# set(CPM_SOURCE_CACHE "$ENV{HOME}/.cache/CPM")

# Ccache
include (cmake/ccache.cmake)

# Cpp Language Standard && Compiler Flags
set(CMAKE_CXX_STANDARD 20)
# set(CMAKE_CXX_FLAGS "-fno-omit-frame-pointer -flto")
# -fcf-protection=none intel cet protector, endbr64
set(CMAKE_CXX_FLAGS "-fno-omit-frame-pointer -g")

# add dependencies
include(cmake/CPM.cmake)
CPMAddPackage("gh:boost-ext/di@1.2.0")


include(CTest)

add_subdirectory(src)

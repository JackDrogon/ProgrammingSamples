cmake_minimum_required(VERSION 3.11)

project(abseil_samples
  VERSION
    1.0
  DESCRIPTION
    "Abseil samples project"
  LANGUAGES
    CXX
)

# Basic Config
set(CMAKE_EXPORT_COMPILE_COMMANDS 1) # Write compile_commands.json
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "-fno-omit-frame-pointer")

# ===========================================================
# Process Abseil's CMake build system
# Ccache
include (cmake/ccache.cmake)

# add dependencies
include(cmake/CPM.cmake)
CPMAddPackage("gh:abseil/abseil-cpp#20220623.0")
if(abseil_ADDED)
	 set_property(DIRECTORY ${abseil_SOURCE_DIR} PROPERTY EXCLUDE_FROM_ALL YES)
endif()

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

cmake_minimum_required(VERSION 3.11)

project(fmt_samples
  VERSION
    1.0
  DESCRIPTION
    "fmt samples project"
  LANGUAGES
    CXX
)

# Basic Config
set(CMAKE_EXPORT_COMPILE_COMMANDS 1) # Write compile_commands.json
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "-fno-omit-frame-pointer")

# ===========================================================
# Process fmt's CMake build system
# Ccache
include (cmake/ccache.cmake)

# add dependencies
include(cmake/CPM.cmake)
CPMAddPackage("gh:fmtlib/fmt#10.1.1")
if(fmt_ADDED)
	 set_property(DIRECTORY ${fmt_SOURCE_DIR} PROPERTY EXCLUDE_FROM_ALL YES)
endif()

# ===========================================================
add_subdirectory(src)

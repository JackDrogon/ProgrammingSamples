cmake_minimum_required(VERSION 3.11)

project(folly_samples
  VERSION
    1.0
  DESCRIPTION
    "folly samples project"
  LANGUAGES
    CXX
)

# Basic Config
set(CMAKE_EXPORT_COMPILE_COMMANDS 1) # Write compile_commands.json
set(CMAKE_CXX_STANDARD 20)
add_compile_options(-fno-omit-frame-pointer)


# ===========================================================
# Ccache
include (cmake/ccache.cmake)

# add dependencies
include(cmake/CPM.cmake)
find_package(FOLLY REQUIRED)

# ===========================================================
add_subdirectory(src)

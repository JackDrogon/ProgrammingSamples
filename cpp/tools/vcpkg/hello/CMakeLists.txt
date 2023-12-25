cmake_minimum_required(VERSION 3.10)

project(hello)

find_package(fmt CONFIG REQUIRED)

add_executable(hello hello.cc)

target_link_libraries(hello PRIVATE fmt::fmt)

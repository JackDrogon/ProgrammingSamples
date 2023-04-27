#unittests
add_executable(defer_unittest defer_unittest.cc)
target_link_libraries(defer_unittest Catch2::Catch2WithMain)
target_include_directories(defer_unittest PRIVATE ${PROJECT_SOURCE_DIR})
catch_discover_tests(defer_unittest defer_unittest)

add_executable(defer_test defer_test.cc)
target_include_directories(defer_test PRIVATE ${PROJECT_SOURCE_DIR})

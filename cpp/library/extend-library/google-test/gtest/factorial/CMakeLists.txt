add_executable(factorial_test factorial.cc factorial_test.cc)
target_link_libraries(factorial_test gtest_main)
add_test(NAME factorial_test COMMAND factorial_test)

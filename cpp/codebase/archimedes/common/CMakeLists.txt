#unittests
if (ARCHIMEDES_BUILD_TESTING)
    add_executable(defer_unittest defer_unittest.cc)
    target_link_libraries(defer_unittest Catch2::Catch2WithMain)
    catch_discover_tests(defer_unittest defer_unittest)
endif()

add_executable(defer_test defer_test.cc)

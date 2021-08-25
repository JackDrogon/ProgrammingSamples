add_executable(symbolize symbolize.cc)
target_link_libraries(symbolize absl::symbolize absl::str_format)

add_executable(stacktrace stacktrace.cc)
target_link_libraries(stacktrace absl::stacktrace)

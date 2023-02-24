function(add_executable_from_cc exe_name)
  add_executable(${exe_name} ${exe_name}.cc)
  target_link_libraries(${exe_name} Folly::folly)
endfunction()

add_executable_from_cc(cpuid)
add_executable_from_cc(concurrent_skiplist)

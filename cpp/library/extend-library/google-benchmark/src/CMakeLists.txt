function(add_ut exe_name)
  add_executable(${exe_name} ${exe_name}.cc)
  target_link_libraries(${exe_name} benchmark::benchmark_main)
endfunction()

add_ut(basic_test)
add_ut(memcpy_test)
add_ut(map_test)
add_ut(intset_test)

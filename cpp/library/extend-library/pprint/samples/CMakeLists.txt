function(add_executable_from_cc exe_name)
  add_executable(${exe_name} ${exe_name}.cc)
  target_link_libraries(${exe_name} pprint)
endfunction()

add_executable_from_cc(hello)
add_executable_from_cc(print_fdt)

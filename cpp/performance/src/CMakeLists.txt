function(add_bench exe_name)
  add_executable(${exe_name} ${exe_name}.cc)
  target_link_libraries(${exe_name} benchmark::benchmark_main)
endfunction()

set(FILE_LIST
    visitor_bench.cc
    atomic_bench.cc
    vtable_bench.cc
)

foreach(file ${FILE_LIST})
  get_filename_component(exe_name ${file} NAME_WE)
  add_bench(${exe_name} ${file})
endforeach()

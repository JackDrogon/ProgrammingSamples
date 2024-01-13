# set(FILE_LIST
#   fmt_color.cc
#   fmt_error.cc
#   fmt_ptr.cc
#   fmt_range.cc
#   fmt_sample.cc
#   fmt_spec.cc
#   format-int-benchmark.cc
#   fmt_str.cc
# )
set(FILE_LIST
  fmt_str.cc
  fmt_literals.cc
  fmt_memory_buffer_sample.cc
  fmt_check_args_num.cc
)

foreach(file ${FILE_LIST})
  get_filename_component(exe_name ${file} NAME_WE)
  add_executable(${exe_name} ${file})
  target_link_libraries(${exe_name} fmt::fmt)
endforeach()

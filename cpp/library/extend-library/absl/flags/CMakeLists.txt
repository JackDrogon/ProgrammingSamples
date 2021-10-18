add_executable(flags_sample flags_sample.cc)

target_link_libraries(flags_sample absl::flags absl::flags_parse)

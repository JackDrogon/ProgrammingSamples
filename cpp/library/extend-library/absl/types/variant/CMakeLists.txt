add_executable(monostate monostate.cc)
target_link_libraries(monostate absl::variant)

add_executable(visit visit.cc)
target_link_libraries(visit absl::variant)

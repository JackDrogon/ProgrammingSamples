add_executable(str_join str_join.cc)

# Declare dependency on the absl:strings library
target_link_libraries(str_join absl::strings)

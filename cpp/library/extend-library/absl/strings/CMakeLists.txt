add_executable(join join.cc)

# Declare dependency on the absl:strings library
target_link_libraries(join absl::strings)

add_executable(zipf zipf.cc)

# Declare dependency on the absl:strings library
target_link_libraries(zipf absl::random_random)

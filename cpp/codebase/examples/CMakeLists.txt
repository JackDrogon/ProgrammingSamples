set(_include_dir ${CMAKE_CURRENT_SOURCE_DIR}/../archimedes/include)

add_executable(defer defer.cc)
target_include_directories(defer PRIVATE ${_include_dir})

add_executable(stop_watch stop_watch.cc)
target_include_directories(stop_watch PRIVATE ${_include_dir})

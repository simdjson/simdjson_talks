
cmake_minimum_required(VERSION 3.16)
project(cppcon2025)

set(CMAKE_CXX_STANDARD 23)

add_executable(player_demo main.cpp)


include(cmake/CPM.cmake)
CPMAddPackage("gh:nlohmann/json@3.12.0")
CPMAddPackage("gh:fmtlib/fmt#11.2.0")

target_link_libraries(player_demo PRIVATE nlohmann_json::nlohmann_json)


target_link_libraries(player_demo PRIVATE fmt::fmt)

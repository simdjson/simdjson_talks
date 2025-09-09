cmake_minimum_required(VERSION 3.16)
project(cppcon2025)

add_executable(player_demo main.cpp)


include(cmake/CPM.cmake)
CPMAddPackage("gh:nlohmann/json@3.12.0")
CPMAddPackage(
    NAME fmt
    GITHUB_REPOSITORY fmtlib/fmt
    GIT_TAG 18e160eb4c2e9f5c750f5eb11ab13be44aa8de78
)

CPMAddPackage(
    NAME simdjson
    GITHUB_REPOSITORY simdjson/simdjson
    GIT_TAG 015daad6a95a4f67c08ed5980d24b57be221c38f
    OPTIONS "SIMDJSON_STATIC_REFLECTION ON"
)

CPMAddPackage(
    NAME cURL
    VERSION 8.15.0
    GIT_TAG tags/curl-8_15_0
    GITHUB_REPOSITORY curl/curl
    OPTIONS
        "BUILD_CURL_EXE OFF"
        "CURL_USE_OPENSSL ON"
        "CURL_ENABLE_SSL ON"
        "CURL_DISABLE_INSTALL ON"
        "CURL_DISABLE_DIGEST_AUTH ON"
        "CURL_DISABLE_KERBEROS_AUTH ON"
        "CURL_DISABLE_NEGOTIATE_AUTH ON"
        "CURL_USE_LIBPSL OFF"
)

target_link_libraries(player_demo PRIVATE nlohmann_json::nlohmann_json)
target_link_libraries(player_demo PRIVATE simdjson)


target_link_libraries(player_demo PRIVATE fmt::fmt)
add_executable(webservice webservice.cpp)
#@target_compile_options(webservice PRIVATE -freflection -fexpansion-statements -stdlib=libc++ -std=c++26)
target_link_libraries(webservice PRIVATE libcurl)
target_link_libraries(webservice PRIVATE fmt::fmt)
target_link_libraries(webservice PRIVATE simdjson::simdjson)


get_target_property(all_properties simdjson::simdjson PROPERTIES)
message("Propriétés définies pour simdjson::simdjson : ${all_properties}")
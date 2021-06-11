# cmake -H. -Bbuild
# cmake --build build

cmake_minimum_required(VERSION 3.20.3)
set(CMAKE_CXX_STANDARD 11)
project(cpp_intro_project)

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
# add_executable(helloworld ${PROJECT_SOURCE_DIR}/test/test.cpp)

# add_subdirectory(${CMAKE_BINARY_DIR}/googletest)

enable_testing()

add_executable(
  hello_test
  ${PROJECT_SOURCE_DIR}/test/test.cc
)

target_link_libraries(
  hello_test
  gtest_main
)

# add_test(hello_test, hello_test)

include(CTest)
include(GoogleTest)
gtest_discover_tests(hello_test)

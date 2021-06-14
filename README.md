# cpp_intro_project

This project consists of my work in implementing a Hello world project with a unity test case for checking the output and circle CI continuous integration status check for improving the collaborative development.

## Getting Started

To run the project, follow these commands in your local machine.

1. First clone the repository using ` git clone https://github.com/premsekharponnada/cpp_intro_project`
2. Build the code using cmake `cmake -S . -B build `
3. Create the binary files `cmake --build build`
4. Go into build directory consisting of files for run `cd build && ctest`

## Prerequisites/Dependencies

You need to have cmake,gtest installed in your machine, else use my docker image in Dockerfile.

A brief reading of gtest, cmake documentation will give you an idea of how this repo works.
Important links to read -- [setting up CI environment][cpp-url]

[cpp-url]: https://levelup.gitconnected.com/how-to-combine-c-cmake-googletest-circleci-docker-and-why-e02d76c060a3

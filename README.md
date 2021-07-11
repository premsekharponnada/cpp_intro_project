# cpp_intro_project

This repository helps developers to create C++ projects compatiple with linting(having systematic code), maintain consistency in the code by providing statistic code analysis from Codacy, and continuously integrating the development of the project through CircleCI.

## Prerequisites/Dependencies

You need to have cmake to build the cpp code,gtest installed in your machine for testing the code, else use my docker image in config.yml.

You need to have C/C++ extension includes IntelliSense for linting support(Sonarlint) and Advanced C/C++ lint for static analyzer to detect any vulnerabilities in the code.

Make a Codacy account if you haven't and link your repository to it for continuous evaluation of your code for vulnurabilities and linting.You have check all the branches that you want to evaluate. Don't forget to enable coverage variation in quality settings for getting status checks.

Make a circleCI account using github if you don't have it and add your repository to integrate it.Later you can give your commands in `.circleci/config.yml` to make your jobs(build/test) successful and ready for merging.

A brief reading of gtest, cmake documentation will give you an idea of how this repo works.
Important links to read -- [setting up CI environment][cpp-url]

## Getting Started

To run the project, follow these commands in your local machine.

1. First clone the repository using ` git clone https://github.com/premsekharponnada/cpp_intro_project`

Go into the project directory `cd cpp_intro_project`

Build the code using cmake `cmake -S . -B build `

Create the binary files `cmake --build build`

Go into build directory consisting of files for run `cd build && ctest`

## Key Notes

This project uses CMake to build the cpp code of the project. For testing the code I used gtest since it has a nice user interface for writing test cases for the project. Later this project was linked with circle CI for continuous integration which means every commit made to this branch will run in the circle CI environment where one can check the status of build, test and rest of the jobs. I created my own Dockerfile for the docker image used in this project. One can use the same image or can develop a new one and upload it to your Docker Hub for usage.

gtest was added as a submodule to install the latest version of the gtest in the project and it also helps circleCI to recognize the gtest and perform the test cases.The extension for the test files written using gtest is `.cc`

[cpp-url]: https://levelup.gitconnected.com/how-to-combine-c-cmake-googletest-circleci-docker-and-why-e02d76c060a3

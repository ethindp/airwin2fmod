cmake_minimum_required(VERSION 3.14)

project(
  RightoMono
  DESCRIPTION "RightoMono copies one channel to both, losslessly."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

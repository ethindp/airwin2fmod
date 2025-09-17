cmake_minimum_required(VERSION 3.14)

project(
  ToTape8
  DESCRIPTION "ToTape8 is Airwindows tape emulation with gain staging, bias and optimized Dubly!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

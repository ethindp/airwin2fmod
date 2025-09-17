cmake_minimum_required(VERSION 3.14)

project(
  DCVoltage
  DESCRIPTION "DCVoltage is literally a DC control voltage, in a plugin."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

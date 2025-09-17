cmake_minimum_required(VERSION 3.14)

project(
  Channel8
  DESCRIPTION "Channel8 is Channel7 with updates from Capacitor2 and Slew3. More and better of what Channel is."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

cmake_minimum_required(VERSION 3.14)

project(
  BrassRider
  DESCRIPTION "BrassRider is One Weird Trick for drum overheads in metal!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

cmake_minimum_required(VERSION 3.14)

project(
  Console8ChannelHype
  DESCRIPTION "Console8ChannelHype swaps out just the In section of Console8ChannelIn, for a brighter sparklier circuit."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

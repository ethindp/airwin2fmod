cmake_minimum_required(VERSION 3.14)

project(
  Console8BussIn
  DESCRIPTION "Console8BussIn moves to a channel/submix/buss topology and adds analog simulation."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

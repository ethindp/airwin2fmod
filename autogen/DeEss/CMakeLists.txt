cmake_minimum_required(VERSION 3.14)

project(
  DeEss
  DESCRIPTION "DeEss is the best de-essing solution there is. A go-to utility plugin."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

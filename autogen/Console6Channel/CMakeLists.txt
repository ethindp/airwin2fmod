cmake_minimum_required(VERSION 3.14)

project(
  Console6Channel
  DESCRIPTION "Console6Channel is a new more intense Console that peaks at lower dB."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

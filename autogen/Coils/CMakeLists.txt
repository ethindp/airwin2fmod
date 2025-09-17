cmake_minimum_required(VERSION 3.14)

project(
  Coils
  DESCRIPTION "Coils models the types of distortion you'll find in transformers."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

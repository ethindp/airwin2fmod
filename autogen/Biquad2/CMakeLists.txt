cmake_minimum_required(VERSION 3.14)

project(
  Biquad2
  DESCRIPTION "Biquad2 is the Airwindows biquad filter that's more sweepable and synthy."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

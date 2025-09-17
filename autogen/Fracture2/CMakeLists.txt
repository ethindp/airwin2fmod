cmake_minimum_required(VERSION 3.14)

project(
  Fracture2
  DESCRIPTION "Fracture2 is a wavefolder that allows more extreme disruption."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

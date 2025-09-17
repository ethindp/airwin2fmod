cmake_minimum_required(VERSION 3.14)

project(
  PodcastDeluxe
  DESCRIPTION "PodcastDeluxe is a pile of compressors (curve style) and phase rotators."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)

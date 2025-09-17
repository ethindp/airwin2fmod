cmake_minimum_required(VERSION 3.14)

include(CheckCCompilerFlag)
include(CheckCXXCompilerFlag)
include(CheckLinkerFlag)
include(CheckIPOSupported)
include(CheckCSourceCompiles)
include(CheckCXXSourceCompiles)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include(harden-target)

project(
  Distance3
  DESCRIPTION "Distance3 combines the best parts of Distance and Discontinuity."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
  set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebugDll")
else()
  set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDll")
endif()
add_library(${PROJECT_NAME} SHARED miniaudio.h plugin.cpp bit_vector.hpp)
if(CMAKE_BUILD_TYPE STREQUAL "Debug" AND NOT CMAKE_CXX_COMPILER_ID MATCHES
                                         "MSVC")
  find_program(CLANG_TIDY_EXE NAMES "clang-tidy")
  if(CLANG_TIDY_EXE)
    set(CLANG_TIDY_COMMAND
        "${CLANG_TIDY_EXE}"
        "-checks=-*,bugprone-*,clang-*,concurrency-*,modernize-*,performance-*,-bugprone-narrowing-conversions"
    )
    set_target_properties(${PROJECT_NAME} PROPERTIES CXX_CLANG_TIDY
                                                     "${CLANG_TIDY_COMMAND}")
  endif()
endif()
set_property(TARGET ${PROJECT_NAME} PROPERTY OUTPUT_NAME ${PROJECT_NAME})
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
if(MSVC)
  set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS "/STACK:8388608")
endif()
find_package(Threads REQUIRED)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules")
find_package(FMOD MODULE REQUIRED)
target_link_libraries(${PROJECT_NAME} PRIVATE FMOD::FMOD)
if (NOT TARGET airwin-registry)
add_subdirectory("${CMAKE_SOURCE_DIR}/external/airwin2rack"
                 "${CMAKE_CURRENT_BINARY_DIR}/external/airwin2rack-build")
endif()
target_link_libraries(${PROJECT_NAME} PRIVATE airwin-registry)
check_cxx_compiler_flag(/utf-8 MSVC_HAS_UTF8_OPTION)
check_cxx_compiler_flag(/bigobj MSVC_HAS_BIGOBJ)
if(MSVC_HAS_UTF8_OPTION)
  target_compile_options(${PROJECT_NAME} PUBLIC /utf-8)
endif()
if(MSVC_HAS_BIGOBJ)
  target_compile_options(${PROJECT_NAME} PUBLIC /bigobj)
endif()
if(WIN32 OR WINDOWS_STORE)
  get_target_property(defs ${PROJECT_NAME} COMPILE_DEFINITIONS)
  list(FIND defs "_HAS_EXCEPTIONS" ARE_EXCEPTIONS_ENABLED)
  if(ARE_EXCEPTIONS_ENABLED EQUAL 0)
    message(FATAL_ERROR "Exceptions are disabled!")
  endif()
  target_compile_definitions(
    ${PROJECT_NAME}
    PUBLIC _CRT_SECURE_NO_WARNINGS _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES=1
           _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT=1)
endif()
target_compile_definitions(${PROJECT_NAME} PUBLIC NOMINMAX)
if(WIN32)
  target_link_libraries(${PROJECT_NAME} PRIVATE onecore.lib)
endif()
check_ipo_supported()
set_property(TARGET ${PROJECT_NAME} PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
harden_target(${PROJECT_NAME})

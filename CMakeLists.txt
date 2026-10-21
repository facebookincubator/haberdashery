# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed
# licenses.

cmake_minimum_required(VERSION 3.16)

project(haberdashery VERSION 0.1.0 LANGUAGES C)

include(CMakePackageConfigHelpers)
include(GNUInstallDirs)

if(CMAKE_SOURCE_DIR STREQUAL PROJECT_SOURCE_DIR)
  set(_haberdashery_is_top_level ON)
else()
  set(_haberdashery_is_top_level OFF)
endif()
option(HABERDASHERY_BUILD_TESTS "Build and register the c89 binding tests"
  ${_haberdashery_is_top_level})

# The assembly uses ELF directives and the System V calling convention.
if(NOT CMAKE_SYSTEM_NAME STREQUAL "Linux" OR NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
  set(_haberdashery_arch "")
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(x86_64|AMD64|amd64)$")
  set(_haberdashery_arch x86_64)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(aarch64|arm64|ARM64)$")
  set(_haberdashery_arch aarch64)
endif()
if(_haberdashery_arch)
  set(HABERDASHERY_SUPPORTED ON)
else()
  set(HABERDASHERY_SUPPORTED OFF)
  message(STATUS "haberdashery: no assembly for ${CMAKE_SYSTEM_NAME} "
    "${CMAKE_SYSTEM_PROCESSOR}; installing a package that reports not found")
endif()

set(_haberdashery_cmake_dir "${CMAKE_INSTALL_LIBDIR}/cmake/haberdashery")

if(HABERDASHERY_SUPPORTED)
  enable_language(ASM)

  set(_bindings_dir "${PROJECT_SOURCE_DIR}/bindings/c89")
  set(_include_dir "${PROJECT_BINARY_DIR}/include")
  set(_asm_sources)
  set(_test_sources)

  # Each c89 header pairs with the .s file of the same name. Headers whose
  # assembly targets another architecture are left out.
  file(GLOB _headers CONFIGURE_DEPENDS
    "${_bindings_dir}/aead/*.h"
    "${_bindings_dir}/aead_streaming/${_haberdashery_arch}/*/*.h"
    "${_bindings_dir}/mac/*.h")
  foreach(_header IN LISTS _headers)
    get_filename_component(_impl "${_header}" NAME_WE)
    get_filename_component(_header_dir "${_header}" DIRECTORY)
    set(_asm "${PROJECT_SOURCE_DIR}/asm/${_haberdashery_arch}/${_impl}.s")
    if(NOT EXISTS "${_asm}")
      file(GLOB _other_asm "${PROJECT_SOURCE_DIR}/asm/*/${_impl}.s")
      if(_other_asm)
        continue()
      endif()
      message(FATAL_ERROR "haberdashery: ${_header} has no assembly at ${_asm}")
    endif()
    # Under GNU as, `.arch_extension sha3` needs an Armv8.2+ base architecture.
    if(_impl MATCHES "_neoversev2$")
      set_source_files_properties("${_asm}" PROPERTIES
        COMPILE_OPTIONS "-march=armv9-a+crypto+sha3")
    endif()
    list(APPEND _asm_sources "${_asm}")
    file(RELATIVE_PATH _rel "${_bindings_dir}" "${_header}")
    configure_file("${_header}" "${_include_dir}/haberdashery/${_rel}" COPYONLY)
    if(EXISTS "${_header_dir}/${_impl}_test.c")
      list(APPEND _test_sources "${_header_dir}/${_impl}_test.c")
    endif()
  endforeach()

  add_library(haberdashery ${_asm_sources})
  add_library(haberdashery::haberdashery ALIAS haberdashery)
  set_target_properties(haberdashery PROPERTIES
    LINKER_LANGUAGE C
    POSITION_INDEPENDENT_CODE ON)
  target_include_directories(haberdashery PUBLIC
    $<BUILD_INTERFACE:${_include_dir}>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

  install(TARGETS haberdashery EXPORT haberdashery-targets
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
  install(DIRECTORY "${_include_dir}/"
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
  install(EXPORT haberdashery-targets
    NAMESPACE haberdashery::
    DESTINATION ${_haberdashery_cmake_dir})

  if(HABERDASHERY_BUILD_TESTS)
    enable_testing()
    foreach(_test_source IN LISTS _test_sources)
      get_filename_component(_test "${_test_source}" NAME_WE)
      add_executable(${_test} "${_test_source}")
      target_link_libraries(${_test} PRIVATE haberdashery)
      set_target_properties(${_test} PROPERTIES
        C_STANDARD 90
        C_STANDARD_REQUIRED ON
        C_EXTENSIONS OFF)
      target_compile_options(${_test} PRIVATE -pedantic)
      add_test(NAME ${_test} COMMAND ${_test})
    endforeach()
  endif()
endif()

configure_package_config_file(
  haberdashery-config.cmake.in
  "${PROJECT_BINARY_DIR}/haberdashery-config.cmake"
  INSTALL_DESTINATION ${_haberdashery_cmake_dir})
write_basic_package_version_file(
  "${PROJECT_BINARY_DIR}/haberdashery-config-version.cmake"
  COMPATIBILITY SameMinorVersion)
install(FILES
  "${PROJECT_BINARY_DIR}/haberdashery-config.cmake"
  "${PROJECT_BINARY_DIR}/haberdashery-config-version.cmake"
  DESTINATION ${_haberdashery_cmake_dir})

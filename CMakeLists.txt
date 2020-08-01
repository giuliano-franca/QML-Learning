cmake_minimum_required(VERSION 3.10)
project(QML-Learning)

set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/bin)

find_package(Qt5 COMPONENTS Core Widgets Quick REQUIRED)
message(STATUS "Found Qt: ${Qt5_VERSION}")
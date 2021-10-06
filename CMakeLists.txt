
cmake_minimum_required(VERSION 2.8.12)

project(pass_copier)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt5Core REQUIRED)
find_package(Qt5Gui REQUIRED)
find_package(Qt5Widgets REQUIRED)

file(GLOB SOURCES main.cpp)

if (WIN32)
  set(TARGET_TYPE "WIN32")
endif()

add_executable(${CMAKE_PROJECT_NAME} ${TARGET_TYPE} ${SOURCES})

target_link_libraries(${CMAKE_PROJECT_NAME} Qt5::Core Qt5::Gui Qt5::Widgets)
if (UNIX)
  target_link_libraries(${CMAKE_PROJECT_NAME} -lpthread)
endif()


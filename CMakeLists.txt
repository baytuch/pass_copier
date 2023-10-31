
cmake_minimum_required(VERSION 2.8.12)

project(passcopier)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt5Core REQUIRED)
find_package(Qt5Gui REQUIRED)
find_package(Qt5Widgets REQUIRED)

file(GLOB SOURCES main.cpp)
file(GLOB RESOURCES app.rc)

if (WIN32)
  set(TARGET_TYPE "WIN32")
endif()

if (MSVC)
  add_executable(${CMAKE_PROJECT_NAME} ${TARGET_TYPE} ${SOURCES} ${RESOURCES})
else()
  add_executable(${CMAKE_PROJECT_NAME} ${TARGET_TYPE} ${SOURCES})
endif()

target_link_libraries(${CMAKE_PROJECT_NAME} Qt5::Core Qt5::Gui Qt5::Widgets)
if (UNIX)
  target_link_libraries(${CMAKE_PROJECT_NAME} -lpthread)
endif()

install(PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME} DESTINATION bin)
install(FILES passcopier.desktop DESTINATION share/applications)


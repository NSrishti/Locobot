# Install script for directory: /home/srishti/interbotix_ws/src/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_joy

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/srishti/interbotix_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_joy/catkin_generated/installspace/interbotix_xslocobot_joy.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_xslocobot_joy/cmake" TYPE FILE FILES
    "/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_joy/catkin_generated/installspace/interbotix_xslocobot_joyConfig.cmake"
    "/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_joy/catkin_generated/installspace/interbotix_xslocobot_joyConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_xslocobot_joy" TYPE FILE FILES "/home/srishti/interbotix_ws/src/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_joy/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/interbotix_xslocobot_joy" TYPE PROGRAM FILES "/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_joy/catkin_generated/installspace/xslocobot_robot")
endif()


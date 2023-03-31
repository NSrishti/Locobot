# Install script for directory: /home/srishti/interbotix_ws/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/srishti/interbotix_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/srishti/interbotix_ws/install" TYPE PROGRAM FILES "/home/srishti/interbotix_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/srishti/interbotix_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/srishti/interbotix_ws/install" TYPE PROGRAM FILES "/home/srishti/interbotix_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/srishti/interbotix_ws/install/setup.bash;/home/srishti/interbotix_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/srishti/interbotix_ws/install" TYPE FILE FILES
    "/home/srishti/interbotix_ws/build/catkin_generated/installspace/setup.bash"
    "/home/srishti/interbotix_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/srishti/interbotix_ws/install/setup.sh;/home/srishti/interbotix_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/srishti/interbotix_ws/install" TYPE FILE FILES
    "/home/srishti/interbotix_ws/build/catkin_generated/installspace/setup.sh"
    "/home/srishti/interbotix_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/srishti/interbotix_ws/install/setup.zsh;/home/srishti/interbotix_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/srishti/interbotix_ws/install" TYPE FILE FILES
    "/home/srishti/interbotix_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/srishti/interbotix_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/srishti/interbotix_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/srishti/interbotix_ws/install" TYPE FILE FILES "/home/srishti/interbotix_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/srishti/interbotix_ws/build/gtest/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_common_modules/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_common_toolbox/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_perception_toolbox/interbotix_perception_toolbox/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_core/interbotix_ros_xseries/interbotix_ros_xseries/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_ros_xslocobots/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_ros_xslocobots_examples/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_xs_toolbox/interbotix_xs_toolbox/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_xslocobot_moveit/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/create3_sim_ros1/irobot_create_common/irobot_create_description/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_msgs/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_xs_toolbox/interbotix_xs_modules/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_core/interbotix_ros_xseries/dynamixel_workbench_toolbox/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_perception_toolbox/interbotix_perception_modules/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_landmark_modules/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_tf_tools/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_xs_toolbox/interbotix_xs_rviz/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_moveit_interface/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_xslocobot_descriptions/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_xslocobot_control/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_joy/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_moveit_interface/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_xslocobot_nav/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_xslocobot_perception/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/examples/interbotix_xslocobot_landmark_nav/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_toolboxes/interbotix_xs_toolbox/interbotix_xs_ros_control/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_xslocobot_gazebo/cmake_install.cmake")
  include("/home/srishti/interbotix_ws/build/interbotix_ros_rovers/interbotix_ros_xslocobots/interbotix_xslocobot_ros_control/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/srishti/interbotix_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

# Install script for directory: /home/monica/panda_work/src/common_msgs/sensor_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/monica/panda_work/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  INCLUDE("/home/monica/panda_work/build/common_msgs/sensor_msgs/catkin_generated/safe_execute_install.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_msgs/msg" TYPE FILE FILES
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/CameraInfo.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/CompressedImage.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/FluidPressure.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/Illuminance.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/Image.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/Imu.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/JointState.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/Joy.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/LaserEcho.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/LaserScan.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/MagneticField.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/NavSatFix.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/PointCloud.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/PointCloud2.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/PointField.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/Range.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/Temperature.msg"
    "/home/monica/panda_work/src/common_msgs/sensor_msgs/msg/TimeReference.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_msgs/srv" TYPE FILE FILES "/home/monica/panda_work/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_msgs/cmake" TYPE FILE FILES "/home/monica/panda_work/build/common_msgs/sensor_msgs/catkin_generated/installspace/sensor_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/monica/panda_work/devel/include/sensor_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/monica/panda_work/devel/share/common-lisp/ros/sensor_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/monica/panda_work/devel/lib/python2.7/dist-packages/sensor_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/monica/panda_work/devel/lib/python2.7/dist-packages/sensor_msgs" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/monica/panda_work/devel/lib/python2.7/dist-packages/sensor_msgs" FILES_MATCHING REGEX "/home/monica/panda_work/devel/lib/python2.7/dist-packages/sensor_msgs/.+/__init__.pyc?$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/monica/panda_work/build/common_msgs/sensor_msgs/catkin_generated/installspace/sensor_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_msgs/cmake" TYPE FILE FILES "/home/monica/panda_work/build/common_msgs/sensor_msgs/catkin_generated/installspace/sensor_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_msgs/cmake" TYPE FILE FILES
    "/home/monica/panda_work/build/common_msgs/sensor_msgs/catkin_generated/installspace/sensor_msgsConfig.cmake"
    "/home/monica/panda_work/build/common_msgs/sensor_msgs/catkin_generated/installspace/sensor_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_msgs" TYPE FILE FILES "/home/monica/panda_work/src/common_msgs/sensor_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sensor_msgs" TYPE DIRECTORY FILES "/home/monica/panda_work/src/common_msgs/sensor_msgs/include/sensor_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/monica/panda_work/build/common_msgs/sensor_msgs/test/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)


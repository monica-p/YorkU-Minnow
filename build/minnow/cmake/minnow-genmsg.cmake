# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "minnow: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iminnow:/home/monica/panda_work/src/minnow/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(minnow_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/monica/panda_work/src/minnow/srv/throttle_val.srv" NAME_WE)
add_custom_target(_minnow_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "minnow" "/home/monica/panda_work/src/minnow/srv/throttle_val.srv" ""
)

get_filename_component(_filename "/home/monica/panda_work/src/minnow/msg/Boat.msg" NAME_WE)
add_custom_target(_minnow_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "minnow" "/home/monica/panda_work/src/minnow/msg/Boat.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(minnow
  "/home/monica/panda_work/src/minnow/msg/Boat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minnow
)

### Generating Services
_generate_srv_cpp(minnow
  "/home/monica/panda_work/src/minnow/srv/throttle_val.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minnow
)

### Generating Module File
_generate_module_cpp(minnow
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minnow
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(minnow_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(minnow_generate_messages minnow_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/monica/panda_work/src/minnow/srv/throttle_val.srv" NAME_WE)
add_dependencies(minnow_generate_messages_cpp _minnow_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/monica/panda_work/src/minnow/msg/Boat.msg" NAME_WE)
add_dependencies(minnow_generate_messages_cpp _minnow_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minnow_gencpp)
add_dependencies(minnow_gencpp minnow_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minnow_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(minnow
  "/home/monica/panda_work/src/minnow/msg/Boat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minnow
)

### Generating Services
_generate_srv_lisp(minnow
  "/home/monica/panda_work/src/minnow/srv/throttle_val.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minnow
)

### Generating Module File
_generate_module_lisp(minnow
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minnow
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(minnow_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(minnow_generate_messages minnow_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/monica/panda_work/src/minnow/srv/throttle_val.srv" NAME_WE)
add_dependencies(minnow_generate_messages_lisp _minnow_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/monica/panda_work/src/minnow/msg/Boat.msg" NAME_WE)
add_dependencies(minnow_generate_messages_lisp _minnow_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minnow_genlisp)
add_dependencies(minnow_genlisp minnow_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minnow_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(minnow
  "/home/monica/panda_work/src/minnow/msg/Boat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minnow
)

### Generating Services
_generate_srv_py(minnow
  "/home/monica/panda_work/src/minnow/srv/throttle_val.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minnow
)

### Generating Module File
_generate_module_py(minnow
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minnow
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(minnow_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(minnow_generate_messages minnow_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/monica/panda_work/src/minnow/srv/throttle_val.srv" NAME_WE)
add_dependencies(minnow_generate_messages_py _minnow_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/monica/panda_work/src/minnow/msg/Boat.msg" NAME_WE)
add_dependencies(minnow_generate_messages_py _minnow_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minnow_genpy)
add_dependencies(minnow_genpy minnow_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minnow_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minnow)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minnow
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(minnow_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minnow)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minnow
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(minnow_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minnow)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minnow\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minnow
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(minnow_generate_messages_py std_msgs_generate_messages_py)

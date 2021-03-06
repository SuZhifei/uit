# Config file for the vSomeIP package, defines the following variables:
#   VSOMEIP_INCLUDE_DIRS - include directories for vSomeIP
#   VSOMEIP_LIBRARIES    - libraries to link against

# Compute paths
get_filename_component (VSOMEIP_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set (VSOMEIP_INCLUDE_DIRS "${VSOMEIP_CMAKE_DIR}/../../../include")

# Our library dependencies (contains definitions for IMPORTED targets)
if (NOT TARGET vsomeip AND NOT vsomeip_BINARY_DIR)
    include ("${VSOMEIP_CMAKE_DIR}/vsomeipTargets.cmake")
endif ()

# These are IMPORTED targets created by vsomeipTargets.cmake
set (VSOMEIP_LIBRARIES vsomeip)

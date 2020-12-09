FIND_PATH(NFSIDMAP_INCLUDE_DIR nfsidmap.h)
FIND_LIBRARY(NFSIDMAP_LIBRARY NAMES nfsidmap)

IF (NFSIDMAP_INCLUDE_DIR AND NFSIDMAP_LIBRARY)
  SET(NFSIDMAP_FOUND TRUE)
ENDIF (NFSIDMAP_INCLUDE_DIR AND NFSIDMAP_LIBRARY)

IF (NFSIDMAP_FOUND)
  IF (NOT NFSIDMAP_FIND_QUIETLY)
    MESSAGE(STATUS "Found nfs idmap library: ${NFSIDMAP_LIBRARY}")
  ENDIF (NOT NFSIDMAP_FIND_QUIETLY)
ELSE (NFSIDMAP_FOUND)
  IF (NfsIdmap_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find libnfsidmap")
  ENDIF (NfsIdmap_FIND_REQUIRED)
ENDIF (NFSIDMAP_FOUND)

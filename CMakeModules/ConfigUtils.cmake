MACRO(FIND_LIBRARY_VERBOSE VAR Lib)
  IF(NOT ${VAR}_LIBRARY)
    FIND_LIBRARY(${VAR}_LIBRARY ${Lib})
    IF("${${VAR}_LIBRARY}" STREQUAL "")
      MESSAGE(SEND_ERROR "Required library ${VAR} not found")
    ELSE("${${VAR}_LIBRARY}" STREQUAL "")
      MESSAGE(STATUS "Found ${VAR}: ${${VAR}_LIBRARY}")
    ENDIF("${${VAR}_LIBRARY}" STREQUAL "")
  ENDIF(NOT ${VAR}_LIBRARY)
ENDMACRO(FIND_LIBRARY_VERBOSE VAR Lib)



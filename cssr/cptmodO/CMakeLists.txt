
# ----------------------------------------------------------------------------------
# cmake template for C. It is used, by the genMake command,                        #
# to generate a Makefile for the different code generation methods of              #
# the Polychrony tool. It is called with two parameters:                           #
#   - the name of the program (FOO)                                                #
#   - the language C                                                               #
# To regenerate the Makefile for myExample, use the command                        #
#    ° (linux)               cmake . -DFOO=myExample                               #
#    ° (windows with nmake ) cmake . -DFOO=myExample -G"NMake Makefiles"           #
# ----------------------------------------------------------------------------------

project(${FOO} C)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
SET(LANG C)

# uncomment this line for debugging. (linux)
# SET(CMAKE_${LANG}_FLAGS "${CMAKE_${LANG}_FLAGS} -g ")

SET(PK_STD_LIB "$ENV{SignalLibC_incl}")

# Standard code generation.
# -------------------------
SET(MOD_LIST ${FOO}_body.c  ${FOO}_io.c ${FOO}_main.c)
SET_SOURCE_FILES_PROPERTIES(${MOD_LIST} PROPERTIES LANGUAGE ${LANG} GENERATED true)
INCLUDE_DIRECTORIES(${PK_STD_LIB})
SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR})
LINK_DIRECTORIES(${PK_STD_LIB})
ADD_EXECUTABLE(${FOO} ${MOD_LIST})
TARGET_LINK_LIBRARIES(${FOO} SignalStd)
IF(UNIX) # math library
  TARGET_LINK_LIBRARIES(${FOO} m)
ENDIF(UNIX)


# Target separate: for code generation for separate compiling.
# ------------------------------------------------------------
SET(SNAME ${FOO}Separate)
SET(C_MOD_LIST ${FOO}_body_separate.c)
SET_SOURCE_FILES_PROPERTIES(${C_MOD_LIST} PROPERTIES LANGUAGE ${LANG} GENERATED true)
INCLUDE_DIRECTORIES(${PK_STD_LIB})
SET(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR})
ADD_LIBRARY(${SNAME} EXCLUDE_FROM_ALL ${C_MOD_LIST})
ADD_CUSTOM_TARGET(separate DEPENDS ${SNAME} )

# Target threads: for code generating with threads.
# ------------------------------------------------
FIND_PACKAGE(Threads)
SET(BINNAME ${FOO}_threads)
SET(C_MOD_LIST ${FOO}_body.c ${FOO}_io.c)
SET_SOURCE_FILES_PROPERTIES(${C_MOD_LIST} PROPERTIES LANGUAGE ${LANG} GENERATED true)
INCLUDE_DIRECTORIES(${PK_STD_LIB})
ADD_EXECUTABLE(${BINNAME} EXCLUDE_FROM_ALL ${C_MOD_LIST})
TARGET_LINK_LIBRARIES(${BINNAME} SignalStd pthread)
ADD_CUSTOM_TARGET(threads DEPENDS ${BINNAME} )
ADD_CUSTOM_COMMAND(TARGET threads POST_BUILD  COMMAND ${CMAKE_COMMAND} -E create_symlink ${BINNAME} ${FOO})


# Target dist : For code distribution using MPI. (target dist)
# --------------------------------------------------
FIND_PACKAGE(MPI)
IF(MPI_FOUND)
  INCLUDE(CMakeForceCompiler)
  CMAKE_FORCE_CXX_COMPILER(mpic++ "MPI C++ Compiler")
  CMAKE_FORCE_C_COMPILER(mpicc "MPI C Compiler")
  
  SET(BINNAME ${FOO}_dist)
  SET(C_MOD_LIST ${FOO}_body.c ${FOO}_io.c )
  SET_SOURCE_FILES_PROPERTIES(${C_MOD_LIST} PROPERTIES LANGUAGE ${LANG} GENERATED true)
  INCLUDE_DIRECTORIES(${MPI_INCLUDE_PATH})
  INCLUDE_DIRECTORIES(${PK_STD_LIB})
  ADD_EXECUTABLE(${BINNAME} EXCLUDE_FROM_ALL ${C_MOD_LIST})
  TARGET_LINK_LIBRARIES(${BINNAME} ${MPI_LIBRARIES})
  TARGET_LINK_LIBRARIES(${BINNAME} SignalStd pthread)
  ADD_CUSTOM_TARGET(dist DEPENDS ${BINNAME} )
  ADD_CUSTOM_COMMAND(TARGET dist POST_BUILD  COMMAND ${CMAKE_COMMAND} -E create_symlink ${BINNAME} ${FOO})
ENDIF(MPI_FOUND)

# Target info.
# ------------
IF(UNIX)
  SET(NAME_MAKE_CMD make)
ELSE(UNIX)
  SET(NAME_MAKE_CMD nmake)
ENDIF(UNIX)

ADD_CUSTOM_TARGET(info
  COMMAND ${CMAKE_COMMAND} -E echo ""
  COMMAND ${CMAKE_COMMAND} -E echo "* To produce executable for a standard code generation, run the command: ${NAME_MAKE_CMD}"
  COMMAND ${CMAKE_COMMAND} -E echo "* To produce code for separate compiling, run the command: ${NAME_MAKE_CMD} separate"
  COMMAND ${CMAKE_COMMAND} -E echo "* To produce executable for code generation with threads, run the command: ${NAME_MAKE_CMD} threads"
  COMMAND ${CMAKE_COMMAND} -E echo "* To produce executable for distributed code generation [using MPI]: ${NAME_MAKE_CMD} dist "
  COMMAND ${CMAKE_COMMAND} -E echo ""
  COMMAND ${CMAKE_COMMAND} -E echo "*** You can modify the file CMakeLists.txt \\(adding a library for example,...\\),"
  COMMAND ${CMAKE_COMMAND} -E echo "    then re-run the command cmake to produce a new Makefile file."
  COMMAND ${CMAKE_COMMAND} -E echo ""

  COMMAND ${CMAKE_COMMAND} -E echo "*** Using VCD and gtkwave for simulation."
  COMMAND ${CMAKE_COMMAND} -E echo "-----------------------------------------"
  COMMAND ${CMAKE_COMMAND} -E echo "    You can modify \\(uncomment a line\\) the ${FOO}_io.c file to have a VCD \\(Value Change Dump\\) file for simulation."
  COMMAND ${CMAKE_COMMAND} -E echo "    Then, you can use a tool such as gtkwave for the visualization:"
  COMMAND ${CMAKE_COMMAND} -E echo "         - either after the execution of your application by the command: gtkwave W_DUMPFILE_VCD_.dat"
  COMMAND ${CMAKE_COMMAND} -E echo "         - or interactively by running "
  COMMAND ${CMAKE_COMMAND} -E echo "               * your program ${FOO} in a console,"
  COMMAND ${CMAKE_COMMAND} -E echo "               * and the following command in an another console"
  COMMAND ${CMAKE_COMMAND} -E echo "                       shmidcat W_DUMPFILE_VCD_.dat \\| gtkwave -v -I "
  COMMAND ${CMAKE_COMMAND} -E echo ""


  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  )

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro

# Include any dependencies generated for this target.
include CMakeFiles/metorSeparate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/metorSeparate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/metorSeparate.dir/flags.make

CMakeFiles/metorSeparate.dir/metor_body_separate.c.o: CMakeFiles/metorSeparate.dir/flags.make
CMakeFiles/metorSeparate.dir/metor_body_separate.c.o: metor_body_separate.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/metorSeparate.dir/metor_body_separate.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/metorSeparate.dir/metor_body_separate.c.o   -c /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro/metor_body_separate.c

CMakeFiles/metorSeparate.dir/metor_body_separate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/metorSeparate.dir/metor_body_separate.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro/metor_body_separate.c > CMakeFiles/metorSeparate.dir/metor_body_separate.c.i

CMakeFiles/metorSeparate.dir/metor_body_separate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/metorSeparate.dir/metor_body_separate.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro/metor_body_separate.c -o CMakeFiles/metorSeparate.dir/metor_body_separate.c.s

CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.requires:
.PHONY : CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.requires

CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.provides: CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.requires
	$(MAKE) -f CMakeFiles/metorSeparate.dir/build.make CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.provides.build
.PHONY : CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.provides

CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.provides.build: CMakeFiles/metorSeparate.dir/metor_body_separate.c.o

# Object files for target metorSeparate
metorSeparate_OBJECTS = \
"CMakeFiles/metorSeparate.dir/metor_body_separate.c.o"

# External object files for target metorSeparate
metorSeparate_EXTERNAL_OBJECTS =

libmetorSeparate.a: CMakeFiles/metorSeparate.dir/metor_body_separate.c.o
libmetorSeparate.a: CMakeFiles/metorSeparate.dir/build.make
libmetorSeparate.a: CMakeFiles/metorSeparate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libmetorSeparate.a"
	$(CMAKE_COMMAND) -P CMakeFiles/metorSeparate.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/metorSeparate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/metorSeparate.dir/build: libmetorSeparate.a
.PHONY : CMakeFiles/metorSeparate.dir/build

CMakeFiles/metorSeparate.dir/requires: CMakeFiles/metorSeparate.dir/metor_body_separate.c.o.requires
.PHONY : CMakeFiles/metorSeparate.dir/requires

CMakeFiles/metorSeparate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/metorSeparate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/metorSeparate.dir/clean

CMakeFiles/metorSeparate.dir/depend:
	cd /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro /user/gautiery/E5/SE-5201-A/TP2_Sigali/metro/CMakeFiles/metorSeparate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/metorSeparate.dir/depend


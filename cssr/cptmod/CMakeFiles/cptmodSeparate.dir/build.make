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
CMAKE_SOURCE_DIR = /user/gautiery/E5/SE-5201-B/cptmod

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/gautiery/E5/SE-5201-B/cptmod

# Include any dependencies generated for this target.
include CMakeFiles/cptmodSeparate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cptmodSeparate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cptmodSeparate.dir/flags.make

CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o: CMakeFiles/cptmodSeparate.dir/flags.make
CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o: cptmod_body_separate.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/cptmod/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o   -c /user/gautiery/E5/SE-5201-B/cptmod/cptmod_body_separate.c

CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/cptmod/cptmod_body_separate.c > CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.i

CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/cptmod/cptmod_body_separate.c -o CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.s

CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.requires:
.PHONY : CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.requires

CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.provides: CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.requires
	$(MAKE) -f CMakeFiles/cptmodSeparate.dir/build.make CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.provides.build
.PHONY : CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.provides

CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.provides.build: CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o

# Object files for target cptmodSeparate
cptmodSeparate_OBJECTS = \
"CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o"

# External object files for target cptmodSeparate
cptmodSeparate_EXTERNAL_OBJECTS =

libcptmodSeparate.a: CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o
libcptmodSeparate.a: CMakeFiles/cptmodSeparate.dir/build.make
libcptmodSeparate.a: CMakeFiles/cptmodSeparate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libcptmodSeparate.a"
	$(CMAKE_COMMAND) -P CMakeFiles/cptmodSeparate.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cptmodSeparate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cptmodSeparate.dir/build: libcptmodSeparate.a
.PHONY : CMakeFiles/cptmodSeparate.dir/build

CMakeFiles/cptmodSeparate.dir/requires: CMakeFiles/cptmodSeparate.dir/cptmod_body_separate.c.o.requires
.PHONY : CMakeFiles/cptmodSeparate.dir/requires

CMakeFiles/cptmodSeparate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cptmodSeparate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cptmodSeparate.dir/clean

CMakeFiles/cptmodSeparate.dir/depend:
	cd /user/gautiery/E5/SE-5201-B/cptmod && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod/CMakeFiles/cptmodSeparate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cptmodSeparate.dir/depend


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
include CMakeFiles/cptmod_threads.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cptmod_threads.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cptmod_threads.dir/flags.make

CMakeFiles/cptmod_threads.dir/cptmod_body.c.o: CMakeFiles/cptmod_threads.dir/flags.make
CMakeFiles/cptmod_threads.dir/cptmod_body.c.o: cptmod_body.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/cptmod/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/cptmod_threads.dir/cptmod_body.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cptmod_threads.dir/cptmod_body.c.o   -c /user/gautiery/E5/SE-5201-B/cptmod/cptmod_body.c

CMakeFiles/cptmod_threads.dir/cptmod_body.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cptmod_threads.dir/cptmod_body.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/cptmod/cptmod_body.c > CMakeFiles/cptmod_threads.dir/cptmod_body.c.i

CMakeFiles/cptmod_threads.dir/cptmod_body.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cptmod_threads.dir/cptmod_body.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/cptmod/cptmod_body.c -o CMakeFiles/cptmod_threads.dir/cptmod_body.c.s

CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.requires:
.PHONY : CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.requires

CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.provides: CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.requires
	$(MAKE) -f CMakeFiles/cptmod_threads.dir/build.make CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.provides.build
.PHONY : CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.provides

CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.provides.build: CMakeFiles/cptmod_threads.dir/cptmod_body.c.o

CMakeFiles/cptmod_threads.dir/cptmod_io.c.o: CMakeFiles/cptmod_threads.dir/flags.make
CMakeFiles/cptmod_threads.dir/cptmod_io.c.o: cptmod_io.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/cptmod/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/cptmod_threads.dir/cptmod_io.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cptmod_threads.dir/cptmod_io.c.o   -c /user/gautiery/E5/SE-5201-B/cptmod/cptmod_io.c

CMakeFiles/cptmod_threads.dir/cptmod_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cptmod_threads.dir/cptmod_io.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/cptmod/cptmod_io.c > CMakeFiles/cptmod_threads.dir/cptmod_io.c.i

CMakeFiles/cptmod_threads.dir/cptmod_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cptmod_threads.dir/cptmod_io.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/cptmod/cptmod_io.c -o CMakeFiles/cptmod_threads.dir/cptmod_io.c.s

CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.requires:
.PHONY : CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.requires

CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.provides: CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.requires
	$(MAKE) -f CMakeFiles/cptmod_threads.dir/build.make CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.provides.build
.PHONY : CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.provides

CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.provides.build: CMakeFiles/cptmod_threads.dir/cptmod_io.c.o

# Object files for target cptmod_threads
cptmod_threads_OBJECTS = \
"CMakeFiles/cptmod_threads.dir/cptmod_body.c.o" \
"CMakeFiles/cptmod_threads.dir/cptmod_io.c.o"

# External object files for target cptmod_threads
cptmod_threads_EXTERNAL_OBJECTS =

cptmod_threads: CMakeFiles/cptmod_threads.dir/cptmod_body.c.o
cptmod_threads: CMakeFiles/cptmod_threads.dir/cptmod_io.c.o
cptmod_threads: CMakeFiles/cptmod_threads.dir/build.make
cptmod_threads: CMakeFiles/cptmod_threads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable cptmod_threads"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cptmod_threads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cptmod_threads.dir/build: cptmod_threads
.PHONY : CMakeFiles/cptmod_threads.dir/build

CMakeFiles/cptmod_threads.dir/requires: CMakeFiles/cptmod_threads.dir/cptmod_body.c.o.requires
CMakeFiles/cptmod_threads.dir/requires: CMakeFiles/cptmod_threads.dir/cptmod_io.c.o.requires
.PHONY : CMakeFiles/cptmod_threads.dir/requires

CMakeFiles/cptmod_threads.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cptmod_threads.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cptmod_threads.dir/clean

CMakeFiles/cptmod_threads.dir/depend:
	cd /user/gautiery/E5/SE-5201-B/cptmod && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod /user/gautiery/E5/SE-5201-B/cptmod/CMakeFiles/cptmod_threads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cptmod_threads.dir/depend


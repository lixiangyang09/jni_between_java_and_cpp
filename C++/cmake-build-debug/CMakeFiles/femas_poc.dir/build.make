# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lixiangyang/work/femas_poc/C++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lixiangyang/work/femas_poc/C++/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/femas_poc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/femas_poc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/femas_poc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/femas_poc.dir/flags.make

CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o: CMakeFiles/femas_poc.dir/flags.make
CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o: ../com_finone_JavaCallback.cpp
CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o: CMakeFiles/femas_poc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lixiangyang/work/femas_poc/C++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o -MF CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o.d -o CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o -c /Users/lixiangyang/work/femas_poc/C++/com_finone_JavaCallback.cpp

CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lixiangyang/work/femas_poc/C++/com_finone_JavaCallback.cpp > CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.i

CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lixiangyang/work/femas_poc/C++/com_finone_JavaCallback.cpp -o CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.s

CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o: CMakeFiles/femas_poc.dir/flags.make
CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o: ../com_finone_JavaInvoke.cpp
CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o: CMakeFiles/femas_poc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lixiangyang/work/femas_poc/C++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o -MF CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o.d -o CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o -c /Users/lixiangyang/work/femas_poc/C++/com_finone_JavaInvoke.cpp

CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lixiangyang/work/femas_poc/C++/com_finone_JavaInvoke.cpp > CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.i

CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lixiangyang/work/femas_poc/C++/com_finone_JavaInvoke.cpp -o CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.s

CMakeFiles/femas_poc.dir/CallbackManager.cpp.o: CMakeFiles/femas_poc.dir/flags.make
CMakeFiles/femas_poc.dir/CallbackManager.cpp.o: ../CallbackManager.cpp
CMakeFiles/femas_poc.dir/CallbackManager.cpp.o: CMakeFiles/femas_poc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lixiangyang/work/femas_poc/C++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/femas_poc.dir/CallbackManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/femas_poc.dir/CallbackManager.cpp.o -MF CMakeFiles/femas_poc.dir/CallbackManager.cpp.o.d -o CMakeFiles/femas_poc.dir/CallbackManager.cpp.o -c /Users/lixiangyang/work/femas_poc/C++/CallbackManager.cpp

CMakeFiles/femas_poc.dir/CallbackManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/femas_poc.dir/CallbackManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lixiangyang/work/femas_poc/C++/CallbackManager.cpp > CMakeFiles/femas_poc.dir/CallbackManager.cpp.i

CMakeFiles/femas_poc.dir/CallbackManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/femas_poc.dir/CallbackManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lixiangyang/work/femas_poc/C++/CallbackManager.cpp -o CMakeFiles/femas_poc.dir/CallbackManager.cpp.s

CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o: CMakeFiles/femas_poc.dir/flags.make
CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o: ../CallbackWorker.cpp
CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o: CMakeFiles/femas_poc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lixiangyang/work/femas_poc/C++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o -MF CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o.d -o CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o -c /Users/lixiangyang/work/femas_poc/C++/CallbackWorker.cpp

CMakeFiles/femas_poc.dir/CallbackWorker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/femas_poc.dir/CallbackWorker.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lixiangyang/work/femas_poc/C++/CallbackWorker.cpp > CMakeFiles/femas_poc.dir/CallbackWorker.cpp.i

CMakeFiles/femas_poc.dir/CallbackWorker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/femas_poc.dir/CallbackWorker.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lixiangyang/work/femas_poc/C++/CallbackWorker.cpp -o CMakeFiles/femas_poc.dir/CallbackWorker.cpp.s

# Object files for target femas_poc
femas_poc_OBJECTS = \
"CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o" \
"CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o" \
"CMakeFiles/femas_poc.dir/CallbackManager.cpp.o" \
"CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o"

# External object files for target femas_poc
femas_poc_EXTERNAL_OBJECTS =

libfemas_poc.dylib: CMakeFiles/femas_poc.dir/com_finone_JavaCallback.cpp.o
libfemas_poc.dylib: CMakeFiles/femas_poc.dir/com_finone_JavaInvoke.cpp.o
libfemas_poc.dylib: CMakeFiles/femas_poc.dir/CallbackManager.cpp.o
libfemas_poc.dylib: CMakeFiles/femas_poc.dir/CallbackWorker.cpp.o
libfemas_poc.dylib: CMakeFiles/femas_poc.dir/build.make
libfemas_poc.dylib: CMakeFiles/femas_poc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lixiangyang/work/femas_poc/C++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libfemas_poc.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/femas_poc.dir/link.txt --verbose=$(VERBOSE)
	/Users/lixiangyang/.sdkman/candidates/java/current/bin/jar -cfM femas_poc_jni.jar -C ../classes .

# Rule to build all files generated by this target.
CMakeFiles/femas_poc.dir/build: libfemas_poc.dylib
.PHONY : CMakeFiles/femas_poc.dir/build

CMakeFiles/femas_poc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/femas_poc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/femas_poc.dir/clean

CMakeFiles/femas_poc.dir/depend:
	cd /Users/lixiangyang/work/femas_poc/C++/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lixiangyang/work/femas_poc/C++ /Users/lixiangyang/work/femas_poc/C++ /Users/lixiangyang/work/femas_poc/C++/cmake-build-debug /Users/lixiangyang/work/femas_poc/C++/cmake-build-debug /Users/lixiangyang/work/femas_poc/C++/cmake-build-debug/CMakeFiles/femas_poc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/femas_poc.dir/depend

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shixinyang/Downloads/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shixinyang/Downloads/opencv/build

# Include any dependencies generated for this target.
include modules/highgui/CMakeFiles/opencv_highgui.dir/depend.make

# Include the progress variables for this target.
include modules/highgui/CMakeFiles/opencv_highgui.dir/progress.make

# Include the compile flags for this target's objects.
include modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o: modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o: ../modules/highgui/src/window.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/shixinyang/Downloads/opencv/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o"
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_highgui.dir/src/window.cpp.o -c /Users/shixinyang/Downloads/opencv/modules/highgui/src/window.cpp

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui.dir/src/window.cpp.i"
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/shixinyang/Downloads/opencv/modules/highgui/src/window.cpp > CMakeFiles/opencv_highgui.dir/src/window.cpp.i

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui.dir/src/window.cpp.s"
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/shixinyang/Downloads/opencv/modules/highgui/src/window.cpp -o CMakeFiles/opencv_highgui.dir/src/window.cpp.s

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.requires:
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.requires

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.provides: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.requires
	$(MAKE) -f modules/highgui/CMakeFiles/opencv_highgui.dir/build.make modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.provides

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.provides.build: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o: modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o: ../modules/highgui/src/window_cocoa.mm
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/shixinyang/Downloads/opencv/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o"
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o -c /Users/shixinyang/Downloads/opencv/modules/highgui/src/window_cocoa.mm

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.i"
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/shixinyang/Downloads/opencv/modules/highgui/src/window_cocoa.mm > CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.i

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.s"
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/shixinyang/Downloads/opencv/modules/highgui/src/window_cocoa.mm -o CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.s

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.requires:
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.requires

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.provides: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.requires
	$(MAKE) -f modules/highgui/CMakeFiles/opencv_highgui.dir/build.make modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.provides

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.provides.build: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o

# Object files for target opencv_highgui
opencv_highgui_OBJECTS = \
"CMakeFiles/opencv_highgui.dir/src/window.cpp.o" \
"CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o"

# External object files for target opencv_highgui
opencv_highgui_EXTERNAL_OBJECTS =

lib/libopencv_highgui.3.0.0.dylib: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o
lib/libopencv_highgui.3.0.0.dylib: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o
lib/libopencv_highgui.3.0.0.dylib: modules/highgui/CMakeFiles/opencv_highgui.dir/build.make
lib/libopencv_highgui.3.0.0.dylib: lib/libopencv_hal.a
lib/libopencv_highgui.3.0.0.dylib: lib/libopencv_videoio.3.0.0.dylib
lib/libopencv_highgui.3.0.0.dylib: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
lib/libopencv_highgui.3.0.0.dylib: 3rdparty/lib/libzlib.a
lib/libopencv_highgui.3.0.0.dylib: lib/libopencv_imgcodecs.3.0.0.dylib
lib/libopencv_highgui.3.0.0.dylib: lib/libopencv_imgproc.3.0.0.dylib
lib/libopencv_highgui.3.0.0.dylib: lib/libopencv_core.3.0.0.dylib
lib/libopencv_highgui.3.0.0.dylib: lib/libopencv_hal.a
lib/libopencv_highgui.3.0.0.dylib: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
lib/libopencv_highgui.3.0.0.dylib: modules/highgui/CMakeFiles/opencv_highgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../lib/libopencv_highgui.dylib"
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_highgui.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libopencv_highgui.3.0.0.dylib ../../lib/libopencv_highgui.3.0.dylib ../../lib/libopencv_highgui.dylib

lib/libopencv_highgui.3.0.dylib: lib/libopencv_highgui.3.0.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_highgui.3.0.dylib

lib/libopencv_highgui.dylib: lib/libopencv_highgui.3.0.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_highgui.dylib

# Rule to build all files generated by this target.
modules/highgui/CMakeFiles/opencv_highgui.dir/build: lib/libopencv_highgui.dylib
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/build

modules/highgui/CMakeFiles/opencv_highgui.dir/requires: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.o.requires
modules/highgui/CMakeFiles/opencv_highgui.dir/requires: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_cocoa.mm.o.requires
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/requires

modules/highgui/CMakeFiles/opencv_highgui.dir/clean:
	cd /Users/shixinyang/Downloads/opencv/build/modules/highgui && $(CMAKE_COMMAND) -P CMakeFiles/opencv_highgui.dir/cmake_clean.cmake
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/clean

modules/highgui/CMakeFiles/opencv_highgui.dir/depend:
	cd /Users/shixinyang/Downloads/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shixinyang/Downloads/opencv /Users/shixinyang/Downloads/opencv/modules/highgui /Users/shixinyang/Downloads/opencv/build /Users/shixinyang/Downloads/opencv/build/modules/highgui /Users/shixinyang/Downloads/opencv/build/modules/highgui/CMakeFiles/opencv_highgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/depend


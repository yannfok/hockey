# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Yannick\CLionProjects\hockey

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/HockeyGame.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HockeyGame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HockeyGame.dir/flags.make

CMakeFiles/HockeyGame.dir/main.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/main.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HockeyGame.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\main.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\main.cpp

CMakeFiles/HockeyGame.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\main.cpp > CMakeFiles\HockeyGame.dir\main.cpp.i

CMakeFiles/HockeyGame.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\main.cpp -o CMakeFiles\HockeyGame.dir\main.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.obj: ../2D_GameEngine/Controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Controller.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Controller.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Controller.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\Controller.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Controller.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Controller.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.obj: ../2D_GameEngine/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Game.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Game.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Game.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\Game.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Game.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Game.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.obj: ../2D_GameEngine/FrameManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\FrameManager.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\FrameManager.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\FrameManager.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\FrameManager.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\FrameManager.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\FrameManager.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.obj: ../2D_GameEngine/TextureManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\TextureManager.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\TextureManager.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\TextureManager.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\TextureManager.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\TextureManager.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\TextureManager.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.obj: ../2D_GameEngine/GameObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\GameObject.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\GameObject.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\GameObject.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\GameObject.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\GameObject.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\GameObject.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.obj: ../2D_GameEngine/Map.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Map.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Map.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Map.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\Map.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Map.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Map.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.obj: ../2D_GameEngine/Background.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Background.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Background.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Background.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\Background.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Background.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Background.cpp.s

CMakeFiles/HockeyGame.dir/models/Player.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/models/Player.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/models/Player.cpp.obj: ../models/Player.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/HockeyGame.dir/models/Player.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\models\Player.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\models\Player.cpp

CMakeFiles/HockeyGame.dir/models/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/models/Player.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\models\Player.cpp > CMakeFiles\HockeyGame.dir\models\Player.cpp.i

CMakeFiles/HockeyGame.dir/models/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/models/Player.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\models\Player.cpp -o CMakeFiles\HockeyGame.dir\models\Player.cpp.s

CMakeFiles/HockeyGame.dir/models/Puck.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/models/Puck.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/models/Puck.cpp.obj: ../models/Puck.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/HockeyGame.dir/models/Puck.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\models\Puck.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\models\Puck.cpp

CMakeFiles/HockeyGame.dir/models/Puck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/models/Puck.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\models\Puck.cpp > CMakeFiles\HockeyGame.dir\models\Puck.cpp.i

CMakeFiles/HockeyGame.dir/models/Puck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/models/Puck.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\models\Puck.cpp -o CMakeFiles\HockeyGame.dir\models\Puck.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.obj: ../2D_GameEngine/DisplayInformation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\DisplayInformation.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\DisplayInformation.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\DisplayInformation.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\DisplayInformation.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\DisplayInformation.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\DisplayInformation.cpp.s

CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.obj: ../2D_GameEngine/Position.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Position.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Position.cpp

CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Position.cpp > CMakeFiles\HockeyGame.dir\2D_GameEngine\Position.cpp.i

CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\2D_GameEngine\Position.cpp -o CMakeFiles\HockeyGame.dir\2D_GameEngine\Position.cpp.s

CMakeFiles/HockeyGame.dir/models/Physics.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/models/Physics.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/models/Physics.cpp.obj: ../models/Physics.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/HockeyGame.dir/models/Physics.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\models\Physics.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\models\Physics.cpp

CMakeFiles/HockeyGame.dir/models/Physics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/models/Physics.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\models\Physics.cpp > CMakeFiles\HockeyGame.dir\models\Physics.cpp.i

CMakeFiles/HockeyGame.dir/models/Physics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/models/Physics.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\models\Physics.cpp -o CMakeFiles\HockeyGame.dir\models\Physics.cpp.s

CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.obj: CMakeFiles/HockeyGame.dir/flags.make
CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.obj: CMakeFiles/HockeyGame.dir/includes_CXX.rsp
CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.obj: ../models/QuitButton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HockeyGame.dir\models\QuitButton.cpp.obj -c C:\Users\Yannick\CLionProjects\hockey\models\QuitButton.cpp

CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Yannick\CLionProjects\hockey\models\QuitButton.cpp > CMakeFiles\HockeyGame.dir\models\QuitButton.cpp.i

CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Yannick\CLionProjects\hockey\models\QuitButton.cpp -o CMakeFiles\HockeyGame.dir\models\QuitButton.cpp.s

# Object files for target HockeyGame
HockeyGame_OBJECTS = \
"CMakeFiles/HockeyGame.dir/main.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.obj" \
"CMakeFiles/HockeyGame.dir/models/Player.cpp.obj" \
"CMakeFiles/HockeyGame.dir/models/Puck.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.obj" \
"CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.obj" \
"CMakeFiles/HockeyGame.dir/models/Physics.cpp.obj" \
"CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.obj"

# External object files for target HockeyGame
HockeyGame_EXTERNAL_OBJECTS =

HockeyGame.exe: CMakeFiles/HockeyGame.dir/main.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/Controller.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/Game.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/FrameManager.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/TextureManager.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/GameObject.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/Map.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/Background.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/models/Player.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/models/Puck.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/DisplayInformation.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/2D_GameEngine/Position.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/models/Physics.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/models/QuitButton.cpp.obj
HockeyGame.exe: CMakeFiles/HockeyGame.dir/build.make
HockeyGame.exe: C:/MinGW/lib/libSDL2main.a
HockeyGame.exe: C:/MinGW/lib/libSDL2.dll.a
HockeyGame.exe: CMakeFiles/HockeyGame.dir/linklibs.rsp
HockeyGame.exe: CMakeFiles/HockeyGame.dir/objects1.rsp
HockeyGame.exe: CMakeFiles/HockeyGame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable HockeyGame.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\HockeyGame.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HockeyGame.dir/build: HockeyGame.exe

.PHONY : CMakeFiles/HockeyGame.dir/build

CMakeFiles/HockeyGame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\HockeyGame.dir\cmake_clean.cmake
.PHONY : CMakeFiles/HockeyGame.dir/clean

CMakeFiles/HockeyGame.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Yannick\CLionProjects\hockey C:\Users\Yannick\CLionProjects\hockey C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug C:\Users\Yannick\CLionProjects\hockey\cmake-build-debug\CMakeFiles\HockeyGame.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HockeyGame.dir/depend


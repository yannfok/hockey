cmake_minimum_required(VERSION 3.15)
project(HockeyGame)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/cmake/")
set(CMAKE_CXX_STANDARD 14)

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)

include_directories(${SDL2_INCLUDE_DIR})

add_executable(HockeyGame main.cpp 2D_GameEngine/Game.cpp 2D_GameEngine/Game.h 2D_GameEngine/FrameManager.cpp 2D_GameEngine/FrameManager.h 2D_GameEngine/TextureManager.cpp 2D_GameEngine/TextureManager.h 2D_GameEngine/GameObject.cpp 2D_GameEngine/GameObject.h 2D_GameEngine/Map.cpp 2D_GameEngine/Map.h 2D_GameEngine/Background.cpp 2D_GameEngine/Background.h models/Player.cpp models/Player.h models/Puck.cpp models/Puck.h 2D_GameEngine/DisplayInformation.cpp 2D_GameEngine/DisplayInformation.h 2D_GameEngine/Position.cpp 2D_GameEngine/Position.h)
target_link_libraries(HockeyGame ${SDL2_LIBRARY} -lSDL2)
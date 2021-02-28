# Hockey Game

## Goal of the project

The goal of the project was to learn the SDL2 library with the C ++ language and to create a table hockey game.

## Installation of the Project

To compile the project you will need to have the SDL2 library installed on your computer otherwise you will have reference errors with the linker.

You will also need to have cmake in order to compile the project because it takes care of doing the linking.

So I recommend using the Clion IDE in order to compile the project.

## Structure of the Project

    /hockey
        /2D_GameEngine
            - Contains all the Element to render the Game
        /assets
            - Contains the ressources of the project
        /cmake
            - Contains the file to link with Cmake
        /cmake-build-debug
            - Output folder to compile the project
        /models
            - Contains Object that defines the Game
        /main.cpp
            - Contains the entry point


## Details

If you find that the game takes place too slowly and you want to increase its fluidity you can modify in the header of the Game class the constant FPS like this :  `#define FPS 60` (change 60 to the refresh rate you want)

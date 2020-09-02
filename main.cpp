#include <iostream>
#include "2D_GameEngine/Game.h"
#include "2D_GameEngine/FrameManager.h"
#include "2D_GameEngine/Background.h"
#include "2D_GameEngine/DisplayInformation.h"

int main(int argc,char * argv[]) {
    auto * engine = new Game();

    try {
        engine->init("Hockey", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 800,600, true);

        engine->loop([&engine] {
            engine->handleEvents();
            engine->update();
            engine->render();
        });

        delete engine;
    }catch (const std::exception &e)
    {

        std::cerr << e.what() << std::endl;

    }
    return 0;
}

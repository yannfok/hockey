#include <iostream>
#include "2D_GameEngine/Game.h"
#include "2D_GameEngine/FrameManager.h"
#include "2D_GameEngine/Background.h"

int main(int argc,char * argv[]) {
    auto * engine = new Game();

    engine->init("Hockey",SDL_WINDOWPOS_CENTERED,SDL_WINDOWPOS_CENTERED,800,600, false);

    engine->loop([&engine]{
       engine->handleEvents();
       engine->update();
       engine->render();
    });

    delete engine;

    return 0;
}

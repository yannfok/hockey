#include <iostream>
#include "models/Physics.h"
#include "2D_GameEngine/Game.h"
#include "2D_GameEngine/FrameManager.h"
#include "2D_GameEngine/Background.h"
#include "2D_GameEngine/DisplayInformation.h"

int main(int argc,char * argv[]) {
    auto * engine = new Game();

    //TODO Definir les differents cas de collision avec les elements de la fenetre ou elle meme
    //TODO et definir un vecteur de direction en fonction de l'objet entrée en collision

    try {
        engine->init("Hockey", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 800,600, true);

        engine->setIcon("../assets/app_icon.bmp");

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

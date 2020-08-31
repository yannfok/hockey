//
// Created by yanni on 31/08/2020.
//

#ifndef HOCKEYGAME_GAME_H
#define HOCKEYGAME_GAME_H

#include <functional>
#include <SDL2/SDL.h>
#define FPS 60

class FrameManager;

class Game {
private:
    FrameManager * m_fpsManager;
public:
    Game();
    virtual ~Game();

    void init(const char * title,int xpos,int ypos,int width,int height,bool fullscreen);

    void handleEvents();
    void update();
    void render();
    void clean();
    void loop(const std::function<void()>& callback);

    bool running();

    static SDL_Renderer * _renderer;
    static int _width;
    static int _height;

private:
    bool m_isRunning;
    SDL_Window * m_window;
};


#endif //HOCKEYGAME_GAME_H

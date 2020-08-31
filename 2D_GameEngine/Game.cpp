//
// Created by yanni on 31/08/2020.
//

#include <stdexcept>
#include <iostream>
#include "Game.h"
#include "../models/Player.h"
#include "FrameManager.h"
#include "TextureManager.h"
#include "GameObject.h"
#include "Background.h"

GameObject * player;
GameObject * player2;
Background * bg;
SDL_Renderer * Game::_renderer = nullptr;
int Game::_width = 0;
int Game::_height = 0;

using namespace std;

Game::Game()
{

    this->m_window = nullptr;
    this->m_isRunning = false;
    this->m_fpsManager = new FrameManager(FPS);

}

Game::~Game()
{

    this->clean();

}

void Game::init(const char *title, int xpos, int ypos, int width, int height, bool fullscreen)
{
    int flags = 0;
    Game::_height = height;
    Game::_width = width;
    if(fullscreen)
        flags = SDL_WINDOW_FULLSCREEN;
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        m_isRunning = false;
        throw runtime_error(SDL_GetError());
    }
    m_window = SDL_CreateWindow(title,xpos,ypos,width,height,flags);
    if(!m_window) {
        m_isRunning = false;
        throw runtime_error(SDL_GetError());
    }
    Game::_renderer = SDL_CreateRenderer(this->m_window,-1,0);
    if(!Game::_renderer) {
        m_isRunning = false;
        throw runtime_error(SDL_GetError());
    }
    SDL_SetRenderDrawColor(_renderer,255,255,255,255);
    m_isRunning = true;

    player = new GameObject("../assets/player_texture.bmp",100,200,35,200);
    player2 = new GameObject("../assets/player_texture.bmp",700,200,35,200);
    bg = new Background("../assets/background.bmp");

}

void Game::handleEvents() {

    SDL_Event event;
    SDL_PollEvent(&event);
    switch (event.type)
    {
        case SDL_QUIT:
            m_isRunning = false;
            break;
        default:
            break;
    }

}

bool Game::running() {
    return this->m_isRunning;
}

void Game::clean() {

    SDL_DestroyWindow(m_window);
    SDL_DestroyRenderer(Game::_renderer);
    SDL_Quit();
    std::cout << "Game cleaned" << std::endl;

}

void Game::update() {

    bg->Update([](GameObject * gameObject){
        gameObject->setSrcRectH(720);
        gameObject->setSrcRectW(1280);
        gameObject->setSrcRectX(0);
        gameObject->setSrcRectY(0);
    });
    player->Update([](GameObject * gameObject){
        Player::Control(gameObject);
    });
    player2->Update([](GameObject * gameObject){
        Player::Control(gameObject);
    });

}

void Game::render() {

    SDL_RenderClear(Game::_renderer);
    bg->Render();
    player->Render();
    player2->Render();
    SDL_RenderPresent(Game::_renderer);

}

void Game::loop(const std::function<void()>& callback) {

    Uint32 frameStart;
    unsigned int frameTime;

    while(this->running()) {
        frameStart = SDL_GetTicks();
        callback();
        frameTime = SDL_GetTicks() - frameStart;
        if(m_fpsManager->getDelay() > frameTime)
            SDL_Delay(m_fpsManager->getDelay()-frameTime);
    }

}


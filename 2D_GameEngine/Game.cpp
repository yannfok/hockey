//
// Created by yanni on 31/08/2020.
//

#include <stdexcept>
#include <iostream>
#include "Game.h"
#include "../models/Player.h"
#include "../models/Puck.h"
#include "FrameManager.h"
#include "TextureManager.h"
#include "Position.h"
#include "Background.h"
#include "DisplayInformation.h"
#include "../models/QuitButton.h"

//All objects in the game
GameObject * player;
GameObject * player2;
GameObject * puck;
QuitButton * quitButton;
Puck * puckHandler;
std::vector<GameObject *> gameObjects;
Background * bg;

//Renderer of the window
SDL_Renderer * Game::_renderer = nullptr;

//Two static public variables who defines the width and the height of the window
int Game::_width = 0;
int Game::_height = 0;

using namespace std;

Game::Game()
{

    this->m_window = nullptr;
    this->m_isRunning = false;
    this->m_fpsManager = new FrameManager(FPS);
    this->m_controller = new Controller();

}

Game::~Game()
{

    this->clean();
    delete this->m_controller;

}

void Game::init(const char *title, int xpos, int ypos, int width, int height, bool fullscreen)
{
    int flags = 0;
    Game::_height = height;
    Game::_width = width;
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        m_isRunning = false;
        throw runtime_error(SDL_GetError());
    }
    if(fullscreen) {
        auto * di = new DisplayInformation();
        flags = SDL_WINDOW_FULLSCREEN;
        Game::_height = di->height;
        Game::_width = di->width;
        width = di->width;
        height = di->height;
        delete di;
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

    SDL_ShowCursor(SDL_DISABLE);

    player = new GameObject("../assets/player_texture.bmp",Position::LEFT1().at(0),Position::LEFT1().at(1),35,200);
    player2 = new GameObject("../assets/player_texture_2.bmp",Position::LEFT2().at(0),Position::LEFT2().at(1),35,200);
    bg = new Background("../assets/background.bmp");
    puck = new GameObject("../assets/puck.bmp",Position::PUCK().at(0),Position::PUCK().at(1),70,70,255,255,255);
    puckHandler = new Puck();
    quitButton = new QuitButton();
    gameObjects.push_back(player);
    gameObjects.push_back(player2);

}

void Game::handleEvents() {

    if(!m_controller->getQuit())
    {
        try {
            m_controller->updateController();
            Player::Movement(player,player2,m_controller);
            quitButton->TriggerOnEnter(this,m_controller);
        }catch (const std::exception &e)
        {
            cerr << e.what() << std::endl;
        }

    } else this->m_isRunning = false;
}

bool Game::running() {
    return this->m_isRunning;
}

void Game::clean() {

    SDL_DestroyWindow(m_window);
    SDL_DestroyRenderer(Game::_renderer);
    SDL_Quit();

}

void Game::update() {

    bg->Update([](GameObject * gameObject){
        gameObject->setSrcRectH(720);
        gameObject->setSrcRectW(1280);
        gameObject->setSrcRectX(0);
        gameObject->setSrcRectY(0);
    });
    player->Update([](GameObject * gameObject){
        Player::init(gameObject);
    });
    player2->Update([](GameObject * gameObject){
        Player::init(gameObject);
    });
    puck->Update([](GameObject * gameObject,const std::vector<GameObject*>& objects){
        puckHandler->init(gameObject);
        puckHandler->Move(gameObject,objects);
    },gameObjects);
    quitButton->Update([](GameObject * gameObject){
       QuitButton::Init(gameObject);
    });
    quitButton->GetTrigger()->Update([](GameObject * gameObject){
        QuitButton::InitTrigger(gameObject);
    });

}

void Game::render() {

    SDL_RenderClear(Game::_renderer);
    bg->Render();
    player->Render();
    player2->Render();
    puck->Render();
    quitButton->Render();
    quitButton->GetTrigger()->Render();
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

void Game::stop() {

    this->m_isRunning = false;

}

void Game::setIcon(const char * path) {

    SDL_Surface * tmpSurface = nullptr;
    tmpSurface = SDL_LoadBMP(path);
    if(tmpSurface == nullptr) throw std::runtime_error((string)"Can't define Icon : "+(string)SDL_GetError());
    SDL_SetWindowIcon(m_window,tmpSurface);

}

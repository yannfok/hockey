//
// Created by yanni on 01/07/2020.
//

#include "Controller.h"

using namespace std;

Controller::Controller():m_key(),m_mouse() {
    this->m_quit = false;
    this->m_clickPosition = {-1,-1};
}

void Controller::updateController()
{
    SDL_Event event;
    pair<int,bool> result;
    while(SDL_PollEvent(&event))
    {
        switch (event.type)
        {
            case SDL_QUIT:
                this->m_quit = true;
                break;
            case SDL_WINDOWEVENT:
                if(event.window.event == SDL_WINDOWEVENT_CLOSE)
                    this->m_quit = true;
                break;
            case SDL_KEYDOWN:
                result = Controller::indexOf<long>(this->m_key,event.key.keysym.sym);
                if(!result.second) this->m_key.push_back(event.key.keysym.sym);
                break;
            case SDL_KEYUP:
                result = Controller::indexOf<long>(this->m_key,event.key.keysym.sym);
                if(result.second)
                    this->m_key.erase(this->m_key.begin() + result.first);
                else
                    throw runtime_error("Erreur la touche n'a pas été enfoncé");
                break;
            case SDL_MOUSEBUTTONDOWN:
                result = Controller::indexOf<long>(this->m_mouse,convertMouseButton(event.button.button));
                if(!result.second){
                    try{
                        this->m_mouse.push_back(convertMouseButton(event.button.button));
                        this->m_clickPosition = (SDL_Point){event.button.x,event.button.y};
                    }catch(exception const &e)
                    {
                        cerr << e.what() << endl;
                    }
                }
                break;
            case SDL_MOUSEBUTTONUP:
                result = Controller::indexOf<long>(this->m_mouse,convertMouseButton(event.button.button));
                if(result.second)
                    this->m_mouse.erase(this->m_mouse.begin() + result.first);
                else
                    throw runtime_error("Erreur la touche n'a pas été enfoncée");
                break;
        }

    }
}

long Controller::convertMouseButton(const long &button) {

    switch(button)
    {
        case SDL_BUTTON_LEFT: return MOUSE_LEFT;
        case SDL_BUTTON_MIDDLE: return MOUSE_MIDDLE;
        case SDL_BUTTON_RIGHT: return MOUSE_RIGHT;
        default: throw runtime_error("Valeur inconnu de click pour l'instant");//en cas d'erreur
    }

}

Controller::~Controller() {

    this->m_mouse.clear();
    this->m_key.clear();

}

vector<long> Controller::getMouse() const{
    return this->m_mouse;
}

vector<long> Controller::getKey() const {
    return this->m_key;
}

bool Controller::getQuit() const {
    return this->m_quit;
}

SDL_Point Controller::getClickPosition() const {
    return this->m_clickPosition;
}

SDL_Point Controller::GetMousePos() {

    SDL_Point point;
    int x =0,y=0;
    SDL_GetMouseState(&x,&y);
    point.x = x;
    point.y = y;
    return point;

}



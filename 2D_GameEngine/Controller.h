//
// Created by yanni on 01/07/2020.
//

#ifndef JJBA_CONTROLLER_H
#define JJBA_CONTROLLER_H

#include <vector>
#include <SDL2/SDL.h>
#include <exception>
#include <stdexcept>
#include <iostream>
#include <bits/stdc++.h>

template <typename T>
static std::pair<int,bool> indexOf(const std::vector<T> &find,const T &element);

typedef enum
{
    MOUSE_LEFT=1,
    MOUSE_MIDDLE=2,
    MOUSE_RIGHT=3
}MouseController;

class Controller {
private:
    bool m_quit;
    std::vector<long> m_mouse;
    std::vector<long> m_key;
    SDL_Point m_clickPosition{};
public:
    Controller();
    void updateController();
    bool getQuit() const;
    std::vector<long> getMouse() const;
    std::vector<long> getKey() const;
    SDL_Point getClickPosition() const;
    static SDL_Point GetMousePos();
    static long convertMouseButton(const long &button);
    virtual ~Controller();
    template<typename T>
    static std::pair<int, bool> indexOf(const std::vector<T> &find,const T &elements) {
        std::pair<int,bool> result;
        auto it = std::find(find.begin(),find.end(),elements);

        if(it!=find.end())
        {

            result.second = true;
            result.first = distance(find.begin(),it);

        }else{

            result.second = false;
            result.first = -1;

        }

        return result;

    }
};

#endif //JJBA_CONTROLLER_H

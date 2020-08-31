//
// Created by yanni on 31/08/2020.
//

#ifndef HOCKEYGAME_MAP_H
#define HOCKEYGAME_MAP_H

#include "Game.h"

/**
 * A utiliser plus tard si on veut implementer une future map
 */

class Map {
public:

    Map();
    virtual ~Map()= default;

    void LoadMap();
    void DrawMap();

private:

    SDL_Rect m_src,m_dst;


};


#endif //HOCKEYGAME_MAP_H

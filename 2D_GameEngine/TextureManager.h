//
// Created by yanni on 31/08/2020.
//

#ifndef HOCKEYGAME_TEXTUREMANAGER_H
#define HOCKEYGAME_TEXTUREMANAGER_H

#include <SDL.h>

class TextureManager {
public:
    static SDL_Texture * LoadTexture(const char * filename);
};


#endif //HOCKEYGAME_TEXTUREMANAGER_H

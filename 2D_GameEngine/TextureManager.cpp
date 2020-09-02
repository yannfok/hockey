//
// Created by yanni on 31/08/2020.
//

#include "TextureManager.h"
#include "Game.h"

SDL_Texture *TextureManager::LoadTexture(const char *filename) {
    SDL_Surface* tmpSurface = SDL_LoadBMP(filename);
    SDL_Texture * texture = SDL_CreateTextureFromSurface(Game::_renderer,tmpSurface);
    SDL_FreeSurface(tmpSurface);
    return texture;
}

SDL_Texture *TextureManager::LoadTextureDeleteColor(const char *filename,int r,int g,int b) {
    SDL_Surface* tmpSurface = SDL_LoadBMP(filename);
    SDL_SetColorKey(tmpSurface,true,SDL_MapRGB(tmpSurface->format,r,g,b));
    SDL_Texture * texture = SDL_CreateTextureFromSurface(Game::_renderer,tmpSurface);
    SDL_FreeSurface(tmpSurface);
    return texture;
}

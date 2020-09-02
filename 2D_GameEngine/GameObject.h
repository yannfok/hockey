//
// Created by yanni on 31/08/2020.
//

#pragma once
#ifndef HOCKEYGAME_GAMEOBJECT_H
#define HOCKEYGAME_GAMEOBJECT_H

#include "Game.h"
#include <functional>

class GameObject {
public:
    GameObject(const char * textureSheet,const int &x,const int &y);
    GameObject(const char * textureSheet,const int &x,const int &y,const int &w,const int &h);
    GameObject(const char * textureSheet,const int &x,const int &y,const int &w,const int &h,const int &r,const int &g,const int &b);
    virtual ~GameObject() = default;

    void Update(const std::function<void(GameObject*)>& callback);
    void Render();

    SDL_Rect getSrcRect() const{return this->m_srcRect;}
    SDL_Rect getDstRect() const{ return this->m_dstRect;}
    int getY() const{return this->m_y;}
    int getX() const{return this->m_x;}
    int getW() const{return this->m_width;}
    int getH() const{return this->m_height;}
    void setDstRectX(const int &x){this->m_dstRect.x = x;}
    void setDstRectY(const int &y){this->m_dstRect.y = y;}
    void setDstRectW(const int &w){this->m_dstRect.w = w;}
    void setDstRectH(const int &h){this->m_dstRect.h = h;}
    void setSrcRectX(const int &x){this->m_srcRect.x = x;}
    void setSrcRectY(const int &y){this->m_srcRect.y = y;}
    void setSrcRectW(const int &w){this->m_srcRect.w = w;}
    void setSrcRectH(const int &h){this->m_srcRect.h = h;}
    void setX(const int &x){this->m_x = x;}
    void setY(const int &y){this->m_y = y;}

protected:

    int m_x;
    int m_y;
    int m_width;
    int m_height;

    SDL_Texture * m_texture;
    SDL_Rect m_srcRect{},m_dstRect{};

};


#endif //HOCKEYGAME_GAMEOBJECT_H

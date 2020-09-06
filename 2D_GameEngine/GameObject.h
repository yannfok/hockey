//
// Created by yanni on 31/08/2020.
//

#pragma once
#ifndef HOCKEYGAME_GAMEOBJECT_H
#define HOCKEYGAME_GAMEOBJECT_H

#include "Game.h"
#include <functional>
#include <vector>

enum class Collision_Type : int{
    NONE,
    WINDOW_TOP,
    WINDOW_LEFT,
    WINDOW_RIGHT,
    WINDOW_BOTTOM,
    GAMEOBJECT_LEFT,
    GAMEOBJECT_RIGHT,
    GAMEOBJECT_TOP,
    GAMEOBJECT_BOTTOM
};

class GameObject {
public:
    GameObject(const char * textureSheet,const int &x,const int &y);
    GameObject(const char * textureSheet,const int &x,const int &y,const int &w,const int &h);
    GameObject(const char * textureSheet,const int &x,const int &y,const int &w,const int &h,const int &r,const int &g,const int &b);
    virtual ~GameObject() = default;

    void Update(const std::function<void(GameObject*)>& callback);
    void Update(const std::function<void(GameObject*,std::vector<GameObject*>)>& callback,std::vector<GameObject*> vector);
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
    void setX(const int &x){this->m_x = x;this->m_dstRect.x = x;}
    void setY(const int &y){this->m_y = y;this->m_dstRect.y = y;}
    bool windowCollision();
    bool gameObjectCollision(GameObject * other);
    Collision_Type getCollisionType() const{return this->m_collision_type;}

protected:

    int m_x;
    int m_y;
    int m_width;
    int m_height;

    SDL_Texture * m_texture;
    SDL_Rect m_srcRect{},m_dstRect{};

    Collision_Type m_collision_type;

};


#endif //HOCKEYGAME_GAMEOBJECT_H

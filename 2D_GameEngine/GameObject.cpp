//
// Created by yanni on 31/08/2020.
//

#include "GameObject.h"

#include <utility>
#include "TextureManager.h"

GameObject::GameObject(const char *textureSheet,const int &x,const int &y) {

    this->m_texture = TextureManager::LoadTexture(textureSheet);
    this->m_x = x;
    this->m_y = y;
    this->m_height = 64;
    this->m_width = 64;

    this->m_collision_type = Collision_Type::NONE;

}

void GameObject::Update(const std::function<void(GameObject*)>& callback) {

    callback(this);

}

void GameObject::Render() {

    SDL_RenderCopy(Game::_renderer,m_texture,&m_srcRect,&m_dstRect);

}

GameObject::GameObject(const char *textureSheet, const int &x, const int &y, const int &w,
                       const int &h) {

    this->m_texture = TextureManager::LoadTexture(textureSheet);
    this->m_x = x;
    this->m_y = y;
    this->m_height = h;
    this->m_width = w;

    this->m_dstRect.w = w;
    this->m_dstRect.h = h;
    this->m_dstRect.x = x;
    this->m_dstRect.y = y;

    this->m_collision_type = Collision_Type::NONE;

}

GameObject::GameObject(const char * textureSheet,const int &x,const int &y,const int &w,const int &h,const int &r,const int &g,const int &b) {

    this->m_texture = TextureManager::LoadTextureDeleteColor(textureSheet,r,g,b);
    this->m_x = x;
    this->m_y = y;
    this->m_height = h;
    this->m_width = w;

    this->m_dstRect.w = w;
    this->m_dstRect.h = h;
    this->m_dstRect.x = x;
    this->m_dstRect.y = y;

    this->m_collision_type = Collision_Type::NONE;

}

bool GameObject::windowCollision() {

    bool result = this->m_y <= 0 || this->m_x <= 0 || this->m_x+this->m_width >= Game::_width || this->m_y+this->m_height >= Game::_height;
    if(result)
    {

        if(m_x+m_width>=Game::_width)
            this->m_collision_type = Collision_Type::WINDOW_RIGHT;
        else if(m_y+m_height>=Game::_height)
            this->m_collision_type = Collision_Type::WINDOW_BOTTOM;
        else if(m_y<=0)
            this->m_collision_type = Collision_Type::WINDOW_TOP;
        else if(m_x<=0)
            this->m_collision_type = Collision_Type::WINDOW_LEFT;
    }
    return result;
}

bool GameObject::gameObjectCollision(GameObject *other) {

    if((other->m_y <= this->m_y && this->m_y <= other->m_y+other->m_height) && (other->m_x <= this->m_x && this->m_x <= other->m_x + other->m_width))
    {

        this->m_collision_type = Collision_Type::GAMEOBJECT_RIGHT;
        return true;

    }
    else if((other->m_x <= this->m_x && this->m_x <= other->m_x + other->m_width) && (other->m_y + other->m_height >= this->m_y + this->m_height && this->m_y + this->m_height >= other->m_y))
    {

        this->m_collision_type = Collision_Type::GAMEOBJECT_TOP;
        return true;

    }
    else if((other->m_y <= this->m_y + this->m_height && this->m_y + this->m_height <= other->m_y+other->m_height) && ( other->m_x + other->m_width >= this->m_x + this->m_width && this->m_x + this->m_width >= other->m_x))
    {

        this->m_collision_type = Collision_Type::GAMEOBJECT_LEFT;
        return true;

    }
    else if((other->m_x <= this->m_x + this->m_width && this->m_x + this->m_width <= other->m_x+other->m_width) && (other->m_y <= this->m_y && this->m_y <= other->m_y + other->m_height))
    {

        this->m_collision_type = Collision_Type::GAMEOBJECT_BOTTOM;
        return true;

    }
    return false;

}

void GameObject::Update(const std::function<void(GameObject *,std::vector<GameObject*>)> &callback,std::vector<GameObject*> objects) {

    callback(this,std::move(objects));

}

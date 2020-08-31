//
// Created by yanni on 31/08/2020.
//

#include "GameObject.h"
#include "TextureManager.h"

GameObject::GameObject(const char *textureSheet,const int &x,const int &y) {

    this->m_texture = TextureManager::LoadTexture(textureSheet);
    this->m_x = x;
    this->m_y = y;
    this->m_height = 64;
    this->m_width = 64;

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

}

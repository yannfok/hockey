//
// Created by yanni on 31/08/2020.
//

#include "FrameManager.h"

FrameManager::FrameManager(const int &fps):m_fps(fps) {}

int FrameManager::getDelay() const {
    return 1000/m_fps;
}

void FrameManager::setFps(const int &fps) {

    this->m_fps = fps;

}


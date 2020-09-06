//
// Created by yanni on 02/09/2020.
//

#ifndef HOCKEYGAME_PUCK_H
#define HOCKEYGAME_PUCK_H

#include "../2D_GameEngine/GameObject.h"
#include "Physics.h"
#include <vector>

class Puck : public Physics{
public:

    Puck();
    ~Puck() override = default;

    void init(GameObject * gameObject);
    void Move(GameObject * gameObject,const std::vector<GameObject*>& others);
};


#endif //HOCKEYGAME_PUCK_H

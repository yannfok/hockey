//
// Created by yanni on 02/09/2020.
//

#include <iostream>
#include "Puck.h"


void Puck::init(GameObject *gameObject) {

    gameObject->setSrcRectH(365);
    gameObject->setSrcRectW(365);
    gameObject->setSrcRectX(275);
    gameObject->setSrcRectY(58);

}

void Puck::Move(GameObject *gameObject,const std::vector<GameObject*>& others) {

    if(gameObject->windowCollision() || gameObject->gameObjectCollision(others.at(0)) || gameObject->gameObjectCollision(others.at(1)))
        this->ResetVelocity(gameObject->getCollisionType());
    gameObject->setX(gameObject->getX()+this->getXVelocity());
    gameObject->setY(gameObject->getY()+this->getYVelocity());

}

Puck::Puck():Physics(){}

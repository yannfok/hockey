//
// Created by yanni on 31/08/2020.
//

#include "Player.h"
#include "../2D_GameEngine/GameObject.h"

void Player::Control(GameObject *gameObject) {

    gameObject->setSrcRectH(64);
    gameObject->setSrcRectW(64);
    gameObject->setSrcRectX(0);
    gameObject->setSrcRectY(0);

}

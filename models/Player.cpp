//
// Created by yanni on 31/08/2020.
//

#include "Player.h"
#include "../2D_GameEngine/GameObject.h"
#include "../2D_GameEngine/Game.h"

void Player::init(GameObject *gameObject) {

    gameObject->setSrcRectH(450);
    gameObject->setSrcRectW(82);
    gameObject->setSrcRectX(94);
    gameObject->setSrcRectY(0);

}

void Player::MoveYUp(GameObject *gameObject) {

    gameObject->setY(gameObject->getY()-__PLAYER_MOVE_SPEED<=0?0:gameObject->getY()-__PLAYER_MOVE_SPEED);

}

void Player::MoveYDown(GameObject *gameObject) {

    gameObject->setY(gameObject->getY()+__PLAYER_MOVE_SPEED+gameObject->getH()>=Game::_height?Game::_height-gameObject->getH():gameObject->getY()+__PLAYER_MOVE_SPEED);

}

void Player::Movement(GameObject *g, GameObject *g2, Controller *c) {


    for(auto i:c->getKey())
    {

        switch (i)
        {
            case SDLK_DOWN:
                Player::MoveYDown(g);
                break;
            case SDLK_UP:
                Player::MoveYUp(g);
                break;
            case SDLK_z:
                Player::MoveYUp(g2);
                break;
            case SDLK_s:
                Player::MoveYDown(g2);
                break;
            default:
                break;
        }

    }

}

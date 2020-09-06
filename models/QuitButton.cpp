//
// Created by Yannick on 05/09/2020.
//

#include "QuitButton.h"
#include "../2D_GameEngine/Game.h"

QuitButton::QuitButton():GameObject("../assets/close-button.bmp",Game::_width-SIZE,0,SIZE,SIZE,__BACKGROUND_COLOR,__BACKGROUND_COLOR,__BACKGROUND_COLOR){

    this->m_trigger = new GameObject("../assets/close-button-trigger.bmp",-SIZE,-SIZE,SIZE,SIZE);

}

void QuitButton::Init(GameObject * gameObject) {

        gameObject->setSrcRectX(93);
        gameObject->setSrcRectY(91);
        gameObject->setSrcRectH(328);
        gameObject->setSrcRectW(325);

}

void QuitButton::InitTrigger(GameObject * gameObject) {

    gameObject->setSrcRectX(93);
    gameObject->setSrcRectY(91);
    gameObject->setSrcRectH(328);
    gameObject->setSrcRectW(325);

}

/**
 * Create an animation who display a background when the mouse is on the cross
 */

void QuitButton::TriggerOnEnter(Game * game,Controller * c) {

    if((Controller::GetMousePos().x <= this->m_x + this->m_width && Controller::GetMousePos().x >= this->m_x) && (Controller::GetMousePos().y <= this->m_y + this->m_height && Controller::GetMousePos().y >= this->m_y))
    {

        this->m_trigger->setX(this->m_x);
        this->m_trigger->setY(this->m_y);
        if(!c->getMouse().empty() && c->getMouse().at(0) == MouseController::MOUSE_LEFT)
            game->stop();

    } else{

        this->m_trigger->setX(-SIZE);
        this->m_trigger->setX(-SIZE);

    }

}

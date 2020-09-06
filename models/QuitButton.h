//
// Created by Yannick on 05/09/2020.
//

#ifndef HOCKEYGAME_QUITBUTTON_H
#define HOCKEYGAME_QUITBUTTON_H
#define SIZE 25
#define __BACKGROUND_COLOR 255

#include "../2D_GameEngine/GameObject.h"

class QuitButton : public GameObject{
private:
    GameObject * m_trigger;
public:

    QuitButton();
    ~QuitButton() override = default;

    GameObject * GetTrigger() const{return this->m_trigger;}

    static void Init(GameObject * gameObject);
    static void InitTrigger(GameObject * gameObject);

    void TriggerOnEnter(Game * game,Controller *c);
};


#endif //HOCKEYGAME_QUITBUTTON_H

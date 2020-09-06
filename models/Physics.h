//
// Created by Yannick on 04/09/2020.
//

#ifndef HOCKEYGAME_PHYSICS_H
#define HOCKEYGAME_PHYSICS_H
#define SPEED_MAX_MED_X 20 //X Speed max for 1920*1080 DISPLAY
#define SPEED_MAX_MED_Y 10
#define WINDOW_SIZE_MED_W 1920
#define WINDOW_SIZE_MED_H 1080
#define SPEED_MIN 5

#include <vector>
#include "../2D_GameEngine/GameObject.h"

class Physics {
private:
    std::vector<signed int> m_velocity;
public:

    Physics();
    virtual ~Physics();

    static unsigned int getRandomNumber(unsigned int a,unsigned int b);
    static unsigned int getMaxSpeedX();
    static unsigned int getMaxSpeedY();

    signed int getXVelocity();
    signed int getYVelocity();
    signed int GetDirectionX(Collision_Type collide) const;
    signed int GetDirectionY(Collision_Type collide) const;

    void ResetVelocity(Collision_Type collide);

};


#endif //HOCKEYGAME_PHYSICS_H

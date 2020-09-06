//
// Created by Yannick on 04/09/2020.
//

#include "Physics.h"
#include <chrono>
#include <random>
#include "../2D_GameEngine/Game.h"

unsigned int Physics::getRandomNumber(unsigned int a, unsigned int b) {

    std::random_device rd;
    std::mt19937::result_type seed = rd() ^ (
            (std::mt19937::result_type)
                    std::chrono::duration_cast<std::chrono::seconds>(
                            std::chrono::system_clock::now().time_since_epoch()
                    ).count() +
            (std::mt19937::result_type)
                    std::chrono::duration_cast<std::chrono::microseconds>(
                            std::chrono::high_resolution_clock::now().time_since_epoch()
                    ).count() );

    std::mt19937 gen(seed);
    std::uniform_int_distribution<unsigned> distrib(a, b);

    return distrib(gen);

}

Physics::Physics() {

    this->m_velocity.push_back(Physics::getRandomNumber(SPEED_MIN,Physics::getMaxSpeedX()));
    this->m_velocity.push_back(Physics::getRandomNumber(SPEED_MIN,Physics::getMaxSpeedY()));

}

Physics::~Physics() {

    this->m_velocity.clear();

}

unsigned int Physics::getMaxSpeedX() {

    double coefficientW = (double)Game::_width/WINDOW_SIZE_MED_W;
    return (SPEED_MAX_MED_X * coefficientW<=5)?SPEED_MIN:(int)(SPEED_MAX_MED_X * coefficientW);

}

unsigned int Physics::getMaxSpeedY() {
    double coefficientH = (double)Game::_height/WINDOW_SIZE_MED_H;
    return SPEED_MAX_MED_Y * coefficientH<=5?SPEED_MIN:(int)(SPEED_MAX_MED_Y * coefficientH);
}

signed int Physics::getXVelocity() {
    return this->m_velocity.at(0);
}

signed int Physics::getYVelocity() {
    return this->m_velocity.at(1);
}

signed int Physics::GetDirectionX(Collision_Type collide) const {

    switch(collide)
    {


        case Collision_Type::NONE:
        case Collision_Type::WINDOW_TOP:
        case Collision_Type::WINDOW_LEFT:
        case Collision_Type::WINDOW_BOTTOM:
        case Collision_Type::GAMEOBJECT_RIGHT:
        case Collision_Type::GAMEOBJECT_TOP:
        case Collision_Type::GAMEOBJECT_BOTTOM:
            return 1;
        case Collision_Type::WINDOW_RIGHT:
        case Collision_Type::GAMEOBJECT_LEFT:
            return -1;
    }

    return 0;

}

signed int Physics::GetDirectionY(Collision_Type collide) const {

    switch (collide)
    {


        case Collision_Type::NONE:
        case Collision_Type::WINDOW_TOP:
        case Collision_Type::WINDOW_LEFT:
        case Collision_Type::WINDOW_RIGHT:
        case Collision_Type::GAMEOBJECT_LEFT:
        case Collision_Type::GAMEOBJECT_RIGHT:
        case Collision_Type::GAMEOBJECT_BOTTOM:
            return 1;
        case Collision_Type::WINDOW_BOTTOM:
        case Collision_Type::GAMEOBJECT_TOP:
            return -1;
    }

    return 0;

}


void Physics::ResetVelocity(Collision_Type collide) {

    if(collide==Collision_Type::WINDOW_TOP || collide == Collision_Type::WINDOW_BOTTOM || collide == Collision_Type::GAMEOBJECT_TOP || collide == Collision_Type::GAMEOBJECT_BOTTOM) this->m_velocity[1] = this->GetDirectionY(collide)*Physics::getRandomNumber(SPEED_MIN,Physics::getMaxSpeedY());
    else this->m_velocity[0] = this->GetDirectionX(collide)*Physics::getRandomNumber(SPEED_MIN,Physics::getMaxSpeedX());

}

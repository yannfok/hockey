//
// Created by yanni on 31/08/2020.
//

#ifndef HOCKEYGAME_PLAYER_H
#define HOCKEYGAME_PLAYER_H
#define __PLAYER_MOVE_SPEED 10

class GameObject;
class Controller;

class Player {
public:
    static void init(GameObject * gameObject);
    static void MoveYUp(GameObject * gameObject);
    static void MoveYDown(GameObject * gameObject);
    static void Movement(GameObject * g,GameObject * g2,Controller * c);
};


#endif //HOCKEYGAME_PLAYER_H

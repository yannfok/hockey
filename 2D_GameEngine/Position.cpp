//
// Created by yanni on 02/09/2020.
//

#include "Position.h"
#include "Game.h"

using namespace std;

std::vector<int> Position::LEFT1() {

    vector<int> vector{};
    int halfWidth = Game::_width / 2;
    int halfHeight = Game::_height / 2;
    vector.push_back(halfWidth - halfWidth / 1.2);
    vector.push_back(halfHeight - halfHeight / 4);
    return vector;

}

std::vector<int> Position::LEFT2() {
    vector<int> vector{};
    int halfWidth = Game::_width / 2;
    int halfHeight = Game::_height / 2;
    vector.push_back(halfWidth + halfWidth / 1.2);
    vector.push_back(halfHeight - halfHeight / 4);
    return vector;
}

std::vector<int> Position::PUCK() {
    vector<int> vector{};
    int halfWidth = Game::_width / 2;
    int halfHeight = Game::_height / 2;
    vector.push_back(halfWidth + 50 - halfWidth / 1.2);
    vector.push_back(halfHeight-halfHeight/7);
    return vector;
}



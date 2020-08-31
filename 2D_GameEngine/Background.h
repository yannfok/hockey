//
// Created by yanni on 31/08/2020.
//

#ifndef HOCKEYGAME_BACKGROUND_H
#define HOCKEYGAME_BACKGROUND_H

#include "GameObject.h"

class Background : public GameObject{
private:

public:
    explicit Background(const char * filename);
    ~Background() override = default;
};


#endif //HOCKEYGAME_BACKGROUND_H

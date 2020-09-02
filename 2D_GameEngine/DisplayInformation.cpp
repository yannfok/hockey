//
// Created by yanni on 02/09/2020.
//

#include "DisplayInformation.h"
#include "SDL.h"

DisplayInformation::DisplayInformation() :width(0),height(0){

    SDL_DisplayMode DM;
    SDL_GetDesktopDisplayMode(0, &DM);
    width = DM.w;
    height = DM.h;
}

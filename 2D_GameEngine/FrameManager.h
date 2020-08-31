//
// Created by yanni on 31/08/2020.
//

#ifndef HOCKEYGAME_FRAMEMANAGER_H
#define HOCKEYGAME_FRAMEMANAGER_H


class FrameManager {
private:
    int m_fps;
public:
    explicit FrameManager(const int &fps);
    virtual ~FrameManager() = default;

    int getDelay() const;
    void setFps(const int &fps);
};


#endif //HOCKEYGAME_FRAMEMANAGER_H

/* 
 * File:   demo_management.h
 * Author: jamis
 *
 * Created on May 25, 2016, 1:18 AM
 */

#include <stdbool.h>

#ifndef DEMO_MANAGEMENT_H
#define	DEMO_MANAGEMENT_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#define MAX_SCENES 5

typedef struct {
    bool constantScene;
    uint16_t sceneStartFrame;
    uint16_t sceneLength;
    void (*sceneInit)();
    void (*sceneDraw)(uint16_t frame);
    unsigned char (*audioBuilder)(unsigned char t);
    char sceneName[21];
} SCENE;
//extern SCENE scene;

typedef struct {
//   uint8_t mode;
//   uint8_t currentChan;
//   uint8_t cursorPos;
    uint8_t currentScene;
    bool storyPlaying;
//    bool uartForceStop; //todo: make a way for the uart to halt this thing.
    bool storyEnded;
    bool clutState;
    SCENE scenes[MAX_SCENES];
    uint8_t sceneCount;
} STORY_STATE;
extern STORY_STATE story_state;

extern uint16_t frames;
extern char fpsTextBuffer[20];

void addScene();
void switchScene(uint8_t nextScene);
void drawCurrentScene();
void checkSceneFinished();

void drawFPS();

#ifdef	__cplusplus
}
#endif

#endif	/* DEMO_MANAGEMENT_H */


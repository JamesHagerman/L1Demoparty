#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"
#include "text.h"
#include "sprites.h"

#include "demo_management.h"

#include "road.h"

// Start of road scene
SCENE roadScene = {"Road", 0, 0, 400, &initRoad, &drawRoad, &audioRoad, &inputStringRoad, &inputRoad};

static uint8_t rotAngle = 0;
static int currentSpriteIndex = 0;
static int currentSpriteOffset = 1;
//static int currentSpriteFrameCount = 3;

void initRoad() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);
    // Setup bird sprite offsets:
    currentSpriteIndex = currentSpriteOffset;
    // Setup colors for bird sprite using palette (manually!?! kids these days...)
    // clut_set(0) is black
//    _CLUTEN = 0; // disable CLUT before we swap colors
//    clut_set(1, 0x4208); // gray
//    clut_set(2, 0x9a60); // orange
//    clut_set(3, 0xb800); // red
//    clut_set(4, 0x2124); // dark gray: #232323: 35, 35, 35
//    calc_colors(clutStart); // Build a rainbow starting with CLUT index 4
//    _CLUTEN = 1; // enable the CLUT for this scene
}
void drawRoad(uint16_t frame) {
    drawSprite(2, VER_RES-(25*PIX_H)-(20*PIX_H), currentSpriteIndex, rotAngle);
}

void inputStringRoad(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("Tracker handling input string: %i, %s\n", inputSize, inputBuffer);
}
void inputRoad(EVENT_TYPE inputData) {
    printf("Road handling input: %i\n", inputData);
}

unsigned char audioRoad(unsigned char t) {
    return t/2;
}
// End of road scene
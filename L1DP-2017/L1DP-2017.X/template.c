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

#include "template.h"

static void init() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);
}
static void draw(uint16_t frame) {
}

static void inputString(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("Tracker handling input string: %i, %s\n", inputSize, inputBuffer);
}
static void input(EVENT_TYPE inputData) {
    printf("Road handling input: %i\n", inputData);
}

static unsigned char audio(unsigned char t) {
    return t/2;
}

SCENE someScene = {"TemplateScene", 0, 0, 400, &init, &draw, &audio, &inputString, &input};

// End of road scene
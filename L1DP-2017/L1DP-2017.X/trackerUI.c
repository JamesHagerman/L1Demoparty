#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <math.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"
#include "sprites.h"
#include "demo_management.h"

#include "trackerUI.h"

SCENE trackerScene = {0, 400, &initTracker, &drawTracker, &audioTracker, "Tracker"};

static char titleText[] = "Wavetable Tracker!";

// TODO: Make a Color API so we don't have to calculate this:
static uint8_t clutStart = 5;

void initTracker() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);

    // TODO: Add all of this to a Color API
    _CLUTEN = 0; // disable CLUT before we swap colors
    // TODO: Figure out our synthwave color scheme!
    clut_set(1, 0x4208); // gray
    clut_set(2, 0x9a60); // orange
    clut_set(3, 0xb800); // red
    clut_set(4, 0x2124); // dark gray: #232323: 35, 35, 35
    calc_colors(clutStart); // Build a rainbow starting with CLUT index 4
    _CLUTEN = 1; // enable the CLUT for this scene
}

void drawTracker(uint16_t frame) {
    chr_print(titleText, 0, 0); // x, y are bounded in chr_print
}

unsigned char audioTracker(unsigned char t) {
    return t;
}
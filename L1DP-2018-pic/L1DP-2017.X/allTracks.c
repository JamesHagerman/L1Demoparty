#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"
#include "color_management.h"
#include "drawing_helpers.h"
#include "text.h"

#include "music.h" // declares our sine table (and other stuff)
#include "demo_management.h"
#include "shared.h"
#include "allTracks.h"

static void init() {
    printf("Initing scene %i: %s\n", story_state.currentScene, story_state.scenes[story_state.currentScene].sceneName);

    // Mute the channels we don't want to play in this scene:
    unmuteChannel(0);
    unmuteChannel(1);

    // Force bpm to stupid:
//    setBPM(80, 8);

    // Calculate some stuff:
    sizeW = 1;
    sizeH = 1*PIX_H;
    vertOffset = VER_RES/4;
    screenCenterY = VER_RES/2;

    // Setup colors for bird sprite using palette (manually!?! kids these days...)
    // clut_set(0) is black
    _CLUTEN = 0; // disable CLUT before we swap colors
    clut_set(1, 0x4208); // gray
    clut_set(2, 0x9a60); // orange
    clut_set(3, 0xb800); // red
    clut_set(4, 0x2124); // dark gray: #232323: 35, 35, 35
    calc_colors(clutStart); // Build a rainbow starting with CLUT index 4
    _CLUTEN = 1; // enable the CLUT for this scene
}
static void draw(uint16_t frame) {
    // Draw the title text after first frame:
    if (frame != 0 ) {
        // NOTE: We have to be careful because i goes to VER_RES, but we can't
        // draw on the 480th row. So we have to go until 1 pixel short!
        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
            color = 63;
            newValue = map(chan1Osc.value, 0, 0xff, 0, HOR_RES/4);
            rcc_color(color);
            rcc_draw(newValue, i, sizeW, sizeH);
        }
        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
            color = 126;
            newValue = map(chan2Osc.value, 0, 0xff, 0, HOR_RES/4);
            rcc_color(color);
            rcc_draw(newValue+(HOR_RES/4), i, sizeW, sizeH);
        }
        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
            color = 189;
            newValue = map(chan3Osc.value, 0, 0xff, 0, HOR_RES/4);
            rcc_color(color);
            rcc_draw(newValue+(HOR_RES/4)*2, i, sizeW, sizeH);
        }
        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
            color = 220;
            newValue = map(chan4Osc.value, 0, 0xff, 0, HOR_RES/4);
            rcc_color(color);
            rcc_draw(newValue+(HOR_RES/4)*3, i, sizeW, sizeH);
        }
    }
}

static void inputString(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("AllTracks handling input string: %i, %s\n", inputSize, inputBuffer);
}
static void input(EVENT_TYPE inputData) {
    printf("AllTracks handling input: %i\n", inputData);
}

static unsigned char audio(unsigned char t) {
    return t/2;
}

SCENE allTracks = {"AllTracks", 0, 0, 400, &init, &draw, &audio, &inputString, &input};

// End of road scene
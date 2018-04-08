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
#include "intro2017.h"

static void init() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);

    // Mute the channels we don't want to play in this scene:
    muteChannel(0);
    muteChannel(1);
    muteChannel(3);

    // Force bpm to stupid:
//    setBPM(80, 8);

    // Calculate some stuff:
    sizeW = 1;
    sizeH = 1*PIX_H;
    vertOffset = VER_RES/4;
    screenCenterY = VER_RES/2;

    // Setup bird sprite offsets:
    currentSpriteIndex = currentSpriteOffset;

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
    uint8_t newValue;
//    drawSprite(2, VER_RES-(25*PIX_H)-(20*PIX_H), currentSpriteIndex, rotAngle);

//    increaseBPM();

    // Draw the title text after first frame:
    if (frame != 0 ) {
        colorScrollSpeed++;

//        for (j = 0; j < HOR_RES-1; j+=sizeW) {
//            color = chan1Osc.value;
//
//            rcc_color(color);
//            rcc_draw(j, chan1Osc.value, sizeW, sizeH);
//        }

        // NOTE: We have to be careful because i goes to VER_RES, but we can't
        // draw on the 480th row. So we have to go until 1 pixel short!
//        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
//            color = chan1Osc.value;
//            if (color < clutStart) {
//                color = clutStart;
//            }
//            newValue = map(chan1Osc.value, 0, 0xff, 0, HOR_RES/4);
//            rcc_color(color);
//            rcc_draw(newValue, i, sizeW, sizeH);
//        }
//        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
//            color = chan2Osc.value;
//            if (color < clutStart) {
//                color = clutStart;
//            }
//            newValue = map(chan2Osc.value, 0, 0xff, 0, HOR_RES/4);
//            rcc_color(color);
//            rcc_draw(newValue+(HOR_RES/4), i, sizeW, sizeH);
//        }
        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
            color = chan3Osc.value;
            if (color < clutStart) {
                color = clutStart;
            }
            newValue = map(chan3Osc.value, 0, 0xff, 0, HOR_RES/4);
            rcc_color(color);
            rcc_draw(newValue + sinetable[(uint8_t)frame]/4, i, sizeW, sizeH);
        }
//        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
//            color = chan4Osc.value;
//            if (color < clutStart) {
//                color = clutStart;
//            }
//            newValue = map(chan4Osc.value, 0, 0xff, 0, HOR_RES/4);
//            rcc_color(color);
//            rcc_draw(newValue+(HOR_RES/4)*3, i, sizeW, sizeH);
//        }

//        sprintf(textBuffer, "%i, %i", i, sizeH);
//        chr_print(textBuffer, 0, 0);


//        for (i = 0; i < (VER_RES-1)/2; i+=sizeH) { // y
//            for (j = 0; j < HOR_RES-1; j+=sizeW) { // x
//    //            color = i + j;
//
//                color = (uint8_t)(frame * colorScrollSpeed) +
//                        sinetable[(uint8_t)i] +
//                        sinetable[(uint8_t)j*3];
//
//                if (color == 0 ) {
//                    color = 1;
//                }else if (color == 0xff) {
//                    color = 0xfe;
//                }
//
//                // This is a hack to drop our defined colors from the lookup.
//                if (color < clutStart) {
//                    color = clutStart;
//                }
//
//                rcc_color(color);
//                rcc_draw(j, i + vertOffset, sizeW, sizeH);
//            }
//        }


          // draw color bands for each channel:
//        for (i = 0; i < (((VER_RES-1)/2) >> chan1Osc.amplitude); i+=sizeH) { // y
//            for (j = 0; j < (HOR_RES)/4; j+=sizeW) { // x
//    //            color = i + j;
//                color = chan1Osc.value >> chan1Osc.amplitude;
//
//                if (color == 0 ) {
//                    color = 1;
//                } else if (color == 0xff) {
//                    color = 0xfe;
//                }
//
//                // This is a hack to drop our defined colors from the lookup.
//                if (color < clutStart) {
//                    color = clutStart;
//                }
//
//                rcc_color(color);
//                rcc_draw(j, i + screenCenterY-((((VER_RES-1)/2) >> chan1Osc.amplitude)/2), sizeW, sizeH);
//            }
//        }
//
//        for (i = 0; i < (((VER_RES-1)/2) >> chan2Osc.amplitude); i+=sizeH) { // y
//            for (j = 0; j < (HOR_RES)/4; j+=sizeW) { // x
//    //            color = i + j;
//                color = chan1Osc.value >> chan2Osc.amplitude;
//
//                if (color == 0 ) {
//                    color = 1;
//                } else if (color == 0xff) {
//                    color = 0xfe;
//                }
//
//                // This is a hack to drop our defined colors from the lookup.
//                if (color < clutStart) {
//                    color = clutStart;
//                }
//
//                rcc_color(color);
//                rcc_draw(j+(HOR_RES)/4, i + screenCenterY-((((VER_RES-1)/2) >> chan2Osc.amplitude)/2), sizeW, sizeH);
//            }
//        }
//        for (i = 0; i < (((VER_RES-1)/2) >> chan3Osc.amplitude); i+=sizeH) { // y
//            for (j = 0; j < (HOR_RES)/4; j+=sizeW) { // x
//    //            color = i + j;
//                color = chan3Osc.value >> chan3Osc.amplitude;
//
//                if (color == 0 ) {
//                    color = 1;
//                } else if (color == 0xff) {
//                    color = 0xfe;
//                }
//
//                // This is a hack to drop our defined colors from the lookup.
//                if (color < clutStart) {
//                    color = clutStart;
//                }
//
//                rcc_color(color);
//                rcc_draw(j+((HOR_RES)/4)*2, i + screenCenterY-((((VER_RES-1)/2) >> chan3Osc.amplitude)/2), sizeW, sizeH);
//            }
//        }
//
//        for (i = 0; i < (((VER_RES-1)/2) >> chan4Osc.amplitude); i+=sizeH) { // y
//            for (j = 0; j < (HOR_RES)/4; j+=sizeW) { // x
//    //            color = i + j;
//                color = chan4Osc.value >> chan4Osc.amplitude;
//
//                if (color == 0 ) {
//                    color = 1;
//                } else if (color == 0xff) {
//                    color = 0xfe;
//                }
//
//                // This is a hack to drop our defined colors from the lookup.
//                if (color < clutStart) {
//                    color = clutStart;
//                }
//
//                rcc_color(color);
//                rcc_draw(j+((HOR_RES-1)/4)*3, i + screenCenterY-((((VER_RES-1)/2) >> chan4Osc.amplitude)/2), sizeW, sizeH);
//            }
//        }



        // We have to calculate horizontal movement manually here. No way to
        // detect the drawable width of a string of text at this point.
        chr_print(titleText, 0, (21*5)-4); // x, y are bounded in chr_print
        chr_print(authorText, HOR_RES-48, VER_RES-(21*6)); // x, y are bounded in chr_print
    }
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

SCENE intro2017 = {"Intro", 0, 0, 400, &init, &draw, &audio, &inputString, &input};

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
#include "intro.h"

// Start Intro scene:
SCENE introScene = {0, 400, &initIntro, &drawIntro, &audioIntro, "Intro"};

char titleText[] = "Code MESS";
char authorText[] = "by:jamisnemo";

uint8_t color = 0;
// This should be one greater than the index of the last color we care about in
// the palette for the Crow sprite:
uint16_t maxY = 474; // 480-PIX_H
uint8_t clutStart = 5;
int speed = 1;
int dir = 1;
int xPosition = 0;
static uint8_t rotAngle = 0;
static int currentSpriteIndex = 0;
static int currentSpriteOffset = 1;
//static int currentSpriteFrameCount = 3;
static int spriteStepTimeout = 0;
static int spriteStepTrigger = 10;

uint8_t colorScrollSpeed = 0;
void initIntro() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);
    // Calculate some stuff
    maxY = 480-PIX_H; // validate that the maxX size is correct.
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
void drawIntro(uint16_t frame) {
    uint16_t i, j, sizeW, sizeH, vertOffset;
    sizeW = 1;
    sizeH = 1*PIX_H;
    vertOffset = VER_RES/4;

    // Safety third:
    if (sizeH >= HOR_RES-1 || sizeW >= VER_RES-1 || sizeH <= 0 || sizeW <= 0) return;

    if (frame == 0 ) {
        // Draw background:
        for (i = 0; i < (VER_RES-1)/2; i+=sizeH) { // y
            for (j = 0; j < HOR_RES-1; j+=sizeW) { // x
                color = 0x4; // dark gray background
                rcc_color(color);
                rcc_draw(j, i + vertOffset, sizeW, sizeH);
            }
        }

        // Manage Crow:
        currentSpriteIndex = currentSpriteOffset; // sleep state

    } else {
        colorScrollSpeed++;
        // Draw warp! Finally! A Warp! FUCK yeah!!
        for (i = 0; i < (VER_RES-1)/2; i+=sizeH) { // y
            for (j = 0; j < HOR_RES-1; j+=sizeW) { // x
    //            color = i + j;

                color = (uint8_t)(frame * colorScrollSpeed) +
                        sinetable[(uint8_t)i] +
                        sinetable[(uint8_t)j*3];

                if (color == 0 ) {
                    color = 1;
                }else if (color == 0xff) {
                    color = 0xfe;
                }

                // This is a hack to drop our defined colors from the lookup.
                if (color < clutStart) {
                    color = clutStart;
                }

                rcc_color(color);
                rcc_draw(j, i + vertOffset, sizeW, sizeH);
            }
        }

        // Manage Crow:
        spriteStepTimeout++;
        if (spriteStepTimeout > spriteStepTrigger + 30) {
            currentSpriteIndex = currentSpriteOffset + 1; // awake state
        } else {
            currentSpriteIndex = currentSpriteOffset + 2; // caw state
        }
//        spriteStepTimeout++;
//        if (spriteStepTimeout > spriteStepTrigger) {
//            currentSpriteIndex++;
//            spriteStepTimeout = 0;
//        }
//        if ( currentSpriteIndex >= currentSpriteOffset + currentSpriteFrameCount
//                || currentSpriteIndex == currentSpriteOffset) {
//            currentSpriteIndex = currentSpriteOffset + 1;
//        }
    }
    drawSprite(2, VER_RES-(25*PIX_H)-(20*PIX_H), currentSpriteIndex, rotAngle);

//    if (xPosition + (speed *dir) > maxX || xPosition + (speed *dir) < 0) {
//        dir = dir * -1;
//    }
//    xPosition = xPosition + (speed * dir);

//    rcc_color(0x3);
//    line(0, 0*PIX_H, HOR_RES-1, 0*PIX_H);
//    line(0, maxY-(vertOffset*PIX_H), HOR_RES-1, maxY-(vertOffset*PIX_H));
//    printf("x: %i, dir: %i\r\n", xPosition, dir);

    if (frame != 0 ) {
        // We have to calculate horizontal movement manually here. No way to
        // detect the drawable width of a string of text at this point.
        chr_print(titleText, 0, (21*5)-4); // x, y are bounded in chr_print
        chr_print(authorText, HOR_RES-48, VER_RES-(21*6)); // x, y are bounded in chr_print
    }

}
unsigned char audioIntro(unsigned char t) {
    return t;
}
// End of Intro scene
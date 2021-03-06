#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"
#include "sprites.h"
#include "text.h"
#include "music.h" // declares our sine table (and other stuff)

#include "demo_management.h"

#include "credits2017.h"

static char creditsText[] = "\n\n\n\n\n\n\n\n\n\n\n" \
            "Thank you Arko\n" \
            "and everyone at NSL\n" \
            "that helps make\n" \
            "LayerOne happen!\n" \
            "\n" \
            "Hope the music was\n" \
            "alright!\n\n" \
            "PLEASE make a demo\n" \
            "and show up DG/JK\n" \
            "next year!!";

static void init() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);

    // Unmute the audio channels we want to play
    unmuteChannel(0);
    unmuteChannel(1);
    unmuteChannel(3);

    _CLUTEN = 0; // enable the CLUT for this scene
}
static void draw(uint16_t frame) {
    drawSprite((HOR_RES-32)/2, 4*PIX_H, 8, 0);
    chr_print(creditsText, 0, 0); // x, y are bounded in chr_print
}
static unsigned char audio(unsigned char t) {
    return t & t>>8;
}
static void inputString(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("Credits handling input string: %i, %s\n", inputSize, inputBuffer);
}
static void input(EVENT_TYPE inputData) {
    printf("Credits handling input: %i\n", inputData);
}

SCENE credits2017 = {"Credits", 0, 0, 400, &init, &draw, &audio, &inputString, &input};
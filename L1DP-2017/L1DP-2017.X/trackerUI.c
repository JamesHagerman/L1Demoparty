#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"
#include "text.h"
#include "sprites.h"

#include "music.h"

#include "demo_management.h"

#include "trackerUI.h"

SCENE trackerScene = {1, 0, 400, &initTracker, &drawTracker, &audioTracker, &inputTracker, "Tracker"};

uint8_t headerSize = 3;
static char titleText[] = "Wavetable Tracker!";
char outputBuffer[20];



void drawField(FIELD aField) {
    printf("Tracker handling input: %s\n", aField.fieldName);
}

void inputTracker(uint8_t inputData) {
    printf("Tracker handling input: %i\n", inputData);
}

static char trackTest[] = "\n\n\n\n    | 01| 02| 03| 04\n000 Eb3 D4  G3 D2 \n001\n002\n003\n004\n005\n006\n007\n008\n";

// TODO: Make a Color API so we don't have to calculate this:
static uint8_t clutStart = 5;

void drawHeader(uint16_t frame) {
    chr_print(titleText, 0, 0); // x, y are bounded in chr_print
    sprintf(outputBuffer, "\npos\n%03i", idx);
    chr_print(outputBuffer, 0, 0);
    sprintf(outputBuffer, "\nbpm/div\n%03i/%02i",bpm, noteDivision);
    chr_print(outputBuffer, 16, 0);
}

void drawNotes() {
    char *toDraw;

    // draw channel one note:
    toDraw = notes[(chan1[idx])];
    sprintf(outputBuffer, "\n\n\n%s", toDraw);
    chr_print(outputBuffer, 0, 0);
}

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
    chr_print(trackTest, 0, 0);
    drawHeader(frame);

    drawNotes();
}

unsigned char audioTracker(unsigned char t) {
    return t;
}
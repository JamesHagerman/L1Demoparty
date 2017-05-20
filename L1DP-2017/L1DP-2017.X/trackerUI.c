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


uint8_t fieldCount;
FIELD sceneFields[128];
SCENE trackerScene = {"Tracker", 1, 0, 400, &initTracker, &drawTracker, &audioTracker, &inputStringTracker, &inputTracker};

uint8_t headerSize = 3;
static char titleText[] = "Wavetable Tracker!";
char outputBuffer[20];

// TODO: Add another mode that allows you to change volume per step
uint8_t currentMode = 0; // 0 is parameter change, 1 is note input mode

uint8_t currentStep = 0;
uint8_t currentChan = 0;
uint8_t currentField = 0;

static char trackTest[] = "\n\n\n\n    | 01| 02| 03| 04\n000 Eb3 D4  G3 D2 \n001\n002\n003\n004\n005\n006\n007\n008\n";

// TODO: Make a Color API so we don't have to calculate this:
static uint8_t clutStart = 5;

void drawField(FIELD aField) {
    printf("Tracker drawing field: %s\n", aField.fieldName);
}

void inputStringTracker(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("Tracker handling input string: %s\n", inputBuffer);
}

void inputTracker(EVENT_TYPE inputData) {
//    printf("Tracker handling input: %i\n", inputData);

    if (inputData == TAB) {
        currentMode = !currentMode;
        currentField = 0;
        if (currentMode) {
            printf("\rParameter mode...\n");
        } else {
            printf("\rNote mode...\n");
        }
    } else if (inputData == SPACE) {
        // toggle playing
        togglePlay();
    } else if (inputData == BACKSPACE) {
        //rewind to beginning of song
        rewindSong();
    } else {
        if (currentMode) {
            handleNoteInput(inputData);
        } else {
            handleParameterChanges(inputData);
        }
    }
}

void handleNoteInput(EVENT_TYPE inputData) {
    printf("\rHandling note input... %i\n", inputData);

    // Handle position change (and bound check idx in one go!)
    if (inputData == UP && idx-1 >= 0 ) {
        idx--;
    } else if (inputData == DOWN && idx+1 <= 15 ) {
        idx++;
    }
}
void handleParameterChanges(EVENT_TYPE inputData) {
    printf("\rHandling paramater changes... %i\n", inputData);
    printf("Current field is: %i\n", currentField);
}

void drawHeader(uint16_t frame) {
    chr_print(titleText, 0, 0); // x, y are bounded in chr_print
    sprintf(outputBuffer, "\npos\n%03u", idx);
    chr_print(outputBuffer, 0, 0);
    sprintf(outputBuffer, "\nbpm/div\n%03i/%02i",bpm, noteDivision);
    chr_print(outputBuffer, 16, 0);

    // THIS BREAKS THE COMPILER!
    // Don't use sprintf() unless you NEED FOR FORMAT TEXT! You need a third
    // parameter or you get a crazy error if optimization is off!
    // sprintf(outputBuffer, "| A | B | C | D |");
    chr_print("| A | B | C | D |", 16, charHeight*4);

    // TODO: Add Song Length field
    // TODO: Add Channel volume control+mute field...

}

void drawNote(uint8_t noteValue, uint8_t channel, uint8_t step) {
    char *toDraw;
    uint16_t xOffset = 18+(14*channel);
    uint16_t yOffset = charHeight*5+(charHeight*step); // Define where the notes start from

    // draw channel one note:
    toDraw = notes[noteValue];
    sprintf(outputBuffer, "%s", toDraw);
    chr_print(outputBuffer, xOffset, yOffset);
}

void drawNotes() {
    
    uint8_t i;
    for (i = 0; i < 17; i++) {
        drawNote(chan1[idx+i], 0, 0+i);
        drawNote(chan2[idx+i], 1, 0+i);
        drawNote(chan3[idx+i], 2, 0+i);
        drawNote(chan4[idx+i], 3, 0+i);
    }
}

void drawSteps() {
    uint8_t i;
    uint16_t xOffset = 0;
    uint16_t yOffset = charHeight*5; // Define where the steps start from

    for(i = 0; i < 17; i++) {
        sprintf(outputBuffer, "%03i", idx+i);
        chr_print(outputBuffer, xOffset, yOffset);
        yOffset = yOffset + charHeight;
    }
}

void initTracker() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);

    // Reset which field we're on...
    currentField = 0;
    
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
//    chr_print(trackTest, 0, 0);
    drawHeader(frame);
    drawSteps();
    drawNotes();
}

unsigned char audioTracker(unsigned char t) {
    return t;
}
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

SCENE trackerScene = {"Tracker", 1, 0, 400, &initTracker, &drawTracker, &audioTracker, &inputStringTracker, &inputTracker};

uint8_t headerSize = 3;
static char titleText[] = "Wavetable Tracker!";
char outputBuffer[20];

// TODO: Add another mode that allows you to change volume per step
uint8_t currentMode = 0; // 0 is parameter change, 1 is note input mode

int currentStep = 0;
int currentChan = 0;

int currentField = 0;
uint8_t fieldCount = 3;
FIELD sceneFields[128];



// TODO: Make a Color API so we don't have to calculate this:
static uint8_t clutStart = 5;

void drawField(FIELD aField) {
    printf("Tracker drawing field: %s\n", aField.fieldName);
}

void inputStringTracker(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("\nTracker handling input string: '%s'\n", inputBuffer);
    
    char *fuck = "fuck";
    if ( strcmp((char *)inputBuffer, fuck)) {
        printf("Fine, fuck it. I'll do what I want.\n");
        fuckIt = true;
    }
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
    if (inputData == UP && currentStep-1 >= 0) {
        currentStep--;
    } else if (inputData == DOWN && currentStep+1 <= 31 ) {
        currentStep++;
    } else if (inputData == LEFT && currentChan-1 >= 0) {
        currentChan--;
    } else if (inputData == RIGHT && currentChan+1 <= chanCount-1) {
        currentChan++;
    }
}
void handleParameterChanges(EVENT_TYPE inputData) {
    printf("\rHandling paramater changes... %i\n", inputData);

    switch (currentField) {
        case 0: // BPM
            if (inputData == UP) {
                increaseBPM();
            } else if (inputData == DOWN) {
                decreaseBPM();
            }
            break;
        case 1: // division
            if (inputData == UP) {
                increaseDiv();
            } else if (inputData == DOWN) {
                decreaseDiv();
            }
            break;
        case 2: // length
            if (inputData == UP) {
                increaseSongLength();
            } else if (inputData == DOWN) {
                decreaseSongLength();
            }
            break;
        default:
            break;
    }

    if (inputData == LEFT && currentField-1 >= 0) {
        currentField -= 1;
    } else if (inputData == RIGHT && currentField+1 <= fieldCount-1) {
        currentField += 1;
    }
    printf("Current field is: %i\n", currentField);

}

void drawHeader(uint16_t frame) {
    chr_print(titleText, 0, 0); // x, y are bounded in chr_print

    // TODO: Maybe move each of these into drawField() or use the FIELD

    // Print song position:
    sprintf(outputBuffer, "\npos\n%03u", idx);
    chr_print(outputBuffer, 0, 0);

    // Print BPM field:
    if (currentField == 0 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "\nbpm\n%03i",bpm);
    chr_print(outputBuffer, 16, 0);
    setTextColor(0xff);

    // Print Division field:
    if (currentField == 1 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "\ndiv\n%02i", noteDivision);
    chr_print(outputBuffer, 32, 0);
    setTextColor(0xff);

    // Print song length field:
    if (currentField == 2 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "\nlength\n %03i", songLength);
    chr_print(outputBuffer, 48, 0);
    setTextColor(0xff);

    // THIS BREAKS THE COMPILER!
    // Don't use sprintf() unless you NEED FOR FORMAT TEXT! You need a third
    // parameter or you get a crazy error if optimization is off!
    // sprintf(outputBuffer, "| A | B | C | D |");

    // TODO: Highlight the current channel:
    chr_print("| A | B | C | D |", 16, charHeight*4);

}

void drawNote(uint8_t noteValue, uint8_t channel, uint8_t step, uint8_t screenPos) {
    char *toDraw;
    uint16_t xOffset = 18+(14*channel);
    uint16_t yOffset = charHeight*5+(charHeight*screenPos); // Define where the notes start from

    // draw channel one note:
    toDraw = notes[noteValue];

    if (channel == currentChan && step == currentStep && currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "%s", toDraw);
    chr_print(outputBuffer, xOffset, yOffset);
    setTextColor(0xff);
}

void drawNotes() {
    uint8_t i;
    for (i = 0; i < 17; i++) {
        drawNote(chan1[idx+i], 0, idx+i, i);
        drawNote(chan2[idx+i], 1, idx+i, i);
        drawNote(chan3[idx+i], 2, idx+i, i);
        drawNote(chan4[idx+i], 3, idx+i, i);
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

    // Draw the bird just so we have some proof that the text is transparent:
    drawSprite(2, VER_RES-(25*PIX_H)-(20*PIX_H), 1, 0);

    drawHeader(frame);
    drawSteps();

    // TODO: Add Channel volume control+mute collection based on a third mode...
    drawNotes();
}

unsigned char audioTracker(unsigned char t) {
    return t;
}
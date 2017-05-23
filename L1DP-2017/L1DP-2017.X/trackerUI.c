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
uint8_t currentMode = 0; // 0 is note input mode, 1 is params change mode

int currentStep = 0;
int currentChan = 0;

int currentField = 0;
uint8_t fieldCount = 7;
FIELD sceneFields[128];
int viewOffset = 0;
bool followPlayback = true;

uint8_t currentOctave = 4;
uint8_t currentAmp = 2;

//uint8_t derp = 32;
//uint8_t lerp = 48;

// TODO: Make a Color API so we don't have to calculate this:
static uint8_t clutStart = 5;

void drawField(FIELD aField) {
    printf("Tracker drawing field: %s\n", aField.fieldName);
}

void inputStringTracker(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("\nTracker handling input string: '%s'\n", inputBuffer);
    
    char *fuck = "fuck";
    if ( strcmp((char *)inputBuffer, fuck) == 0) {
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
            printf("\rNote mode...\n");
        } else {
            printf("\rParameter mode...\n");
        }
    } else if (inputData == SPACE) {
        // toggle playing
        togglePlay();
    } else if (inputData == BACKSPACE) {
        //rewind to beginning of song
        rewindSong();
    } else {
        if (currentMode == 0){
            handleParameterChanges(inputData);
        } else if (currentMode == 1) {
            handleNoteInput(inputData);
        }
    }
}

uint8_t keyLookup(uint8_t keyIndex) {
    switch (keyIndex) {
        case 'a':
            return 12;
        case 'w':
            return 13;
        case 's':
            return 14;
        case 'e':
            return 15;
        case 'd':
            return 16;
        case 'f':
            return 17;
        case 't':
            return 18;
        case 'g':
            return 19;
        case 'y':
            return 20;
        case 'h':
            return 21;
        case 'u':
            return 22;
        case 'j':
            return 23;
        case 'k':
            return 24;
        case 'o':
            return 25;
        case 'l':
            return 26;
        // End notes

        // Handle octave change:
        case 'z':
            if (currentOctave-1 >= 0) {
                currentOctave-=1;
            }
            break;
        case 'x':
            if (currentOctave+1 <= 8) {
                currentOctave+=1;
            }
            break;

        // Handle amplitude per step change:
        case 'c':
            if (currentAmp+1 <= 8) {
                currentAmp+=1;
            }
            break;
        case 'v':
            if (currentAmp-1 >= 0) {
                currentAmp-=1;
            }
            break;

//        case 'b':
//            derp--;
//            break;
//        case 'n':
//            derp++;
//            break;
//        case 'q':
//            lerp--;
//            break;
//        case 'r':
//            lerp++;
//            break;

        default:
            break;
    }
    return 255;
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

    if (inputData >= 'a' && inputData <= 'z') {
        uint8_t noteValue = keyLookup(inputData);
        printf("\rLooks like you hit a key... %u\n", noteValue);

        if (noteValue <= 26) {
            changeNote(currentChan, currentStep, noteValue, currentOctave, currentAmp);
        }
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
        case 3: // Chan1 wavetable
        case 4: // Chan2 wavetable
        case 5: // Chan3 wavetable
        case 6: // Chan4 wavetable
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
        printf("Current field is: %i\n", currentField);
    } else if (inputData == RIGHT && currentField+1 <= fieldCount-1) {
        currentField += 1;
        printf("Current field is: %i\n", currentField);
    }
}

void drawParamHeader() {
    // Print BPM field:
    if (currentField == 0 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "\nbpm:%03i",bpm);
    chr_print(outputBuffer, 13, 0);
    setTextColor(0xff);

    // Print Division field:
    if (currentField == 1 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "\n/%02i", noteDivision);
    chr_print(outputBuffer, 41, 0);
    setTextColor(0xff);

    // Print song length field:
    if (currentField == 2 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "\nlen:%02X", songLength);
    chr_print(outputBuffer, 57, 0);
    setTextColor(0xff);
}

void drawNoteHeader() {
    sprintf(outputBuffer, "\noct:%i amp:%i", currentOctave, currentAmp);
    chr_print(outputBuffer, 16, 0);
}

void drawAmpHeader() {
//    chr_print("|sine|saw|sq75|nse |", 9, charHeight*4);
    if (currentField == 3 && !currentMode) {
        setTextColor(0xf0);
    }
//    sprintf(outputBuffer, "|sine", );
    chr_print("|sine", 9, charHeight*4);
    setTextColor(0xff);

    if (currentField == 4 && !currentMode) {
        setTextColor(0xf0);
    }
//    sprintf(outputBuffer, "|saw", );
    chr_print("|saw", 27, charHeight*4);
    setTextColor(0xff);

    if (currentField == 5 && !currentMode) {
        setTextColor(0xf0);
    }
//    sprintf(outputBuffer, "|sq75", );
    chr_print("|sq75", 45, charHeight*4);
    setTextColor(0xff);

    if (currentField == 6 && !currentMode) {
        setTextColor(0xf0);
    }
//    sprintf(outputBuffer, "|nse", );
    chr_print("|nse", 63, charHeight*4);
    setTextColor(0xff);
}

void drawHeader(uint16_t frame) {
    chr_print(titleText, 0, 0); // x, y are bounded in chr_print

//    printf("ugh %i, %i\n", derp, lerp);

    // Print song position:
    sprintf(outputBuffer, "\npos\n%02x  ", idx);
    chr_print(outputBuffer, 0, 0);

    // Print chan headers:
    // THIS BREAKS THE COMPILER!
    // Don't use sprintf() unless you NEED FOR FORMAT TEXT! You need a third
    // parameter or you get a crazy error if optimization is off!
    // sprintf(outputBuffer, "| A | B | C | D |");
    chr_print("| A  | B  | C  | D  |", 9, charHeight*3);
    drawAmpHeader();

    // TODO: Maybe move each of these into drawField() or use the FIELD

    switch(currentMode){
        case 0:
            drawParamHeader();
            break;
        case 1:
            drawNoteHeader();
            break;
        case 2:
            break;
            drawAmpHeader();
        default:
            break;
    }
    
}


void drawNote(uint8_t noteValue, uint8_t ampValue, uint8_t channel, uint8_t step, uint8_t screenPos) {
    char *toDraw;
    uint16_t xOffset = 14+(18*channel);
    uint16_t yOffset = charHeight*5+(charHeight*screenPos); // Define where the notes start from

    // draw channel amp:
    setTextColor(0x1e);
    sprintf(outputBuffer, "%i", ampValue);
    chr_print(outputBuffer, xOffset-4, yOffset);
    setTextColor(0xff);

    // draw channel note:
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
        drawNote(chan1[idx+i], chan1Amp[idx+i], 0, idx+i, i);
        drawNote(chan2[idx+i], chan2Amp[idx+i], 1, idx+i, i);
        drawNote(chan3[idx+i], chan3Amp[idx+i], 2, idx+i, i);
        drawNote(chan4[idx+i], chan4Amp[idx+i], 3, idx+i, i);
    }
}

void drawSteps() {
    uint8_t i;
    uint16_t xOffset = 0;
    uint16_t yOffset = charHeight*5; // Define where the steps start from

    for(i = 0; i < 17; i++) {
        sprintf(outputBuffer, "%02x", idx+i);
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
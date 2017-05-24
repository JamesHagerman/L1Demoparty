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
uint8_t viewOffset = 0;
bool followPlayback = false;

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

void toggleFollow() {
    followPlayback = !followPlayback;
}

uint8_t keyLookup(uint8_t keyIndex) {
    uint8_t newAmp;
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

        case 'n': // Print song to uart for manually saving:
            printSongForSave();
            break;
        
        case 'm': // Handle if the note display follows the song playback
            toggleFollow();
            break;

        case '1': // set current note amplitude to 1 (full volume)
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8': // set current note amplitude to 8 (turn note off)
            newAmp = keyIndex - 48;
            changeAmplitude(currentChan, currentStep, newAmp);
            break;

        // TODO: Add shifted numkeys handler to set octaves
            
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
//    printf("\rHandling note input... %i\n", inputData);
    printf("\r\n");

    // Handle position change (and bound check idx in one go!)
    if (inputData == UP && currentStep-1 >= 0) {
        currentStep--;
    } else if (inputData == DOWN && currentStep+1 < songLength ) {
        currentStep++;
    } else if (inputData == LEFT && currentChan-1 >= 0) {
        currentChan--;
    } else if (inputData == RIGHT && currentChan+1 <= chanCount-1) {
        currentChan++;
    }

    // todo: check followPlayback
    if (currentStep > viewOffset+16) {
        viewOffset++;
    }
    if (currentStep < viewOffset) {
        viewOffset--;
    }

    if ((inputData >= 'a' && inputData <= 'z') || (inputData >= '0' && inputData <= '9')) {
        uint8_t noteValue = keyLookup(inputData);
//        printf("\rLooks like you hit a key... %u\n", noteValue);

        if (noteValue <= 26) {
            changeNote(currentChan, currentStep, noteValue, currentOctave, currentAmp);
        }
    }
}

void handleParameterChanges(EVENT_TYPE inputData) {
//    printf("\rHandling paramater changes... %i\n", inputData);
    printf("\r\n");

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
                increaseWavetableIndex(currentField-3);
            } else if (inputData == DOWN) {
                decreaseWavetableIndex(currentField-3);
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
    chr_print(outputBuffer, 43, 0);
    setTextColor(0xff);

    // Print song length field:
    if (currentField == 2 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "\nlen:%02X", songLength);
    chr_print(outputBuffer, 58, 0);
    setTextColor(0xff);
}

void drawNoteHeader() {
    sprintf(outputBuffer, "\noct:%i amp:%i fol:%i", currentOctave, currentAmp, followPlayback);
    chr_print(outputBuffer, 13, 0);
}

void drawAmpHeader() {
    if (currentField == 3 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "|%s", getChanWavetableName(0));
    chr_print(outputBuffer, 9, charHeight*3);
    setTextColor(0xff);

    if (currentField == 4 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "|%s", getChanWavetableName(1));
    chr_print(outputBuffer, 27, charHeight*3);
    setTextColor(0xff);

    if (currentField == 5 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "|%s", getChanWavetableName(2));
    chr_print(outputBuffer, 45, charHeight*3);
    setTextColor(0xff);

    if (currentField == 6 && !currentMode) {
        setTextColor(0xf0);
    }
    sprintf(outputBuffer, "|%s", getChanWavetableName(3));
    chr_print(outputBuffer, 63, charHeight*3);
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
    chr_print("| A  | B  | C  | D  |", 9, charHeight*2);
    drawAmpHeader();

    // TODO: Maybe move each of these into drawField() or use the FIELD

    switch(currentMode){
        case 0:
            drawParamHeader();
            break;
        case 1:
            drawNoteHeader();
            break;
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
    if (ampValue != 8) {
        sprintf(outputBuffer, "%i", ampValue);
        chr_print(outputBuffer, xOffset-4, yOffset);
    } else {
        chr_print("-", xOffset-4, yOffset);
    }
    setTextColor(0xff);

    // draw channel note:
    toDraw = notes[noteValue];
    if (channel == currentChan && step == currentStep && currentMode) {
        setTextColor(0xf0);
    }
    if (ampValue != 8) {
        sprintf(outputBuffer, "%s", toDraw);
        chr_print(outputBuffer, xOffset, yOffset);
    } else {
        chr_print("--", xOffset, yOffset);
    }
    setTextColor(0xff);
}

void drawNotes() {
    uint8_t i;
    uint8_t offset;
    for (i = 0; i < 17; i++) {
        if (followPlayback) {
            offset = idx+i;
        } else {
            offset = i + viewOffset;
        }
        drawNote(chan1[offset], chan1Amp[offset], 0, offset, i);
        drawNote(chan2[offset], chan2Amp[offset], 1, offset, i);
        drawNote(chan3[offset], chan3Amp[offset], 2, offset, i);
        drawNote(chan4[offset], chan4Amp[offset], 3, offset, i);
    }
}

void drawSteps() {
    uint8_t i;
    uint16_t xOffset = 0;
    uint16_t yOffset = charHeight*5; // Define where the steps start from
    uint8_t offset;

    for(i = 0; i < 17; i++) {
        if (followPlayback) {
            offset = idx+i;
            if (i == 0) {
                setTextColor(0xf0);
            }
        } else {
            offset = i + viewOffset;
            if (offset == idx) {
                setTextColor(0xf0);
            }
        }

        sprintf(outputBuffer, "%02x", offset);
        chr_print(outputBuffer, xOffset, yOffset);
        setTextColor(0xff);
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
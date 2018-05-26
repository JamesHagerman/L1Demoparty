/*
 * File:   synth.c
 * Author: jamis
 *
 * Created on May 24, 2018, 2:33 PM
 */
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
#include "shared.h"
#include "synth.h"

static char synthText[] = "\n\n\n\n\n\n\n\n\n\n\n" \
            "SAW SYNTH!\n" \
            "by:jamisnemo\n\n"
            "USB MIDI = cable\n"
            "Deal with it.\n\n" \
            "Thank you Arko\n" \
            "and everyone at NSL\n" \
            "that helps make\n" \
            "LayerOne happen!\n";

static void inputString(unsigned char *inputBuffer, uint16_t inputSize) {
    printf("\nTracker handling input string: '%s'\n", inputBuffer);
    
    char *fuck = "fuck";
    if ( strcmp((char *)inputBuffer, fuck) == 0) {
        printf("Fine, fuck it. I'll do what I want.\n");
        fuckIt = true;
    }
}

static void input(EVENT_TYPE inputData) {
    printf("Synth handling input: %i\n", inputData);

    if (inputData == TAB) {
        currentMode = 0; // Send us back to the tracker UI
        printf("\rSwitching back to Tracker Parameter mode...\n");
    } else if (inputData == SPACE) {
        // toggle playing
        togglePlay();
    } else if (inputData == BACKSPACE) {
        //rewind to beginning of song
        rewindSong();
//    } else if (inputData == 'b') {
//        printUsage();
    } else {
        if (currentMode == 2){
            handleParameterChanges(inputData);
        }
    }
}

static void init() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);
    
    // Print the Tracker usage message to UART:
//    printUsage();

    // Unmute all channels:
    unmuteChannel(0);
    unmuteChannel(1);
    unmuteChannel(2);
    unmuteChannel(3);
    
    allowSynth();
    allNoteOff();
    
    // Reset which field we're on...
//    currentField = 0;
    
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

static void draw(uint16_t frame) {

    if (frame != 0 && (osc1CurrentNote != 0 || osc2CurrentNote != 0 || osc3CurrentNote != 0 || osc4CurrentNote != 0)) {
        // NOTE: We have to be careful because i goes to VER_RES, but we can't
        // draw on the 480th row. So we have to go until 1 pixel short!
//        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
//            color = 63;
//            newValue = map(chan1Osc.value, 0, 0xff, 0, HOR_RES/4);
//            rcc_color(color);
//            rcc_draw(newValue, i, sizeW, sizeH);
//        }
        for (i = 0; i < (VER_RES-sizeH); i+=sizeH) {
            color = chan1Osc.value;
            if (color < clutStart) {
                color = clutStart;
            }
            newValue = map(chan1Osc.value, 0, 0xff, 0, HOR_RES/4);
            rcc_color(color);
            rcc_draw(newValue + sinetable[(uint8_t)frame]/4, i, sizeW, sizeH);
        }
    }
    
    // L1 sprite:
    drawSprite((HOR_RES-32)/2, 4*PIX_H, 8, 0);
    
    // Draw the bird just so we have some proof that the text is transparent:
    if (osc1CurrentNote != 0 || osc2CurrentNote != 0 || osc3CurrentNote != 0 || osc4CurrentNote != 0) {
        if (lastCrow) {
            drawSprite(25, 13*PIX_H, 3, 0);
        } else {
            drawSprite(25, 13*PIX_H, 2, 0);
        }
    } else {
        drawSprite(25, 13*PIX_H, 1, 0);
    }
    
    chr_print(synthText, 0, 0); // x, y are bounded in chr_print

//    drawHeader(frame);
//    drawSteps();
//
//    // TODO: Add Channel volume control+mute collection based on a third mode...
//    drawNotes();
}

static unsigned char audio(unsigned char t) {
    return t;
}

SCENE synthScene = {"Synth", 1, 0, 400, &init, &draw, &audio, &inputString, &input};

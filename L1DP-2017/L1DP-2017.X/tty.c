#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>
#include "serial.h"
#include "tty.h"

uint8_t uartInputSize = 0;
unsigned char uartInputBuffer[128];
bool foundEscChar = false;
bool foundCtrlChar = false;

// For some reasons, function pointers shouldn't be declared in the header file:
int (*stringHandler)(unsigned char *inputBuffer, uint16_t inputSize);
void (*inputHandler)(EVENT_TYPE inputData);

void setStringHandlerCallback(int (*callback)(unsigned char *inputBuffer, uint16_t inputSize)) {
    stringHandler = callback;
}

void setInputHandlerCallback(void (*callback)(EVENT_TYPE inputData)) {
    inputHandler = callback;
}

int handleSerialInput() {
    // My serial handler for the demo's keyboard input:
    // TODO: Manage some amount of command input. Single char will work for now...
    int toRet = -1;
    EVENT_TYPE eventType = None;
    uint16_t i;
    if (dataAvailableU1) {
//        printf("Got %i chars of data: %s\r\n", rxSize, rx1Buf);
        dataAvailableU1 = false;

        for (i = 0; i < rxSizeU1; i++) {
            unsigned char c = rxBufU1[i];
            uartInputBuffer[uartInputSize] = c;
            uartInputSize++;

            //handle number chars:
            if (c == '\n' || c == '\r') {
                // Handle the string received so far (find this method in main.c!):
                uartInputBuffer[uartInputSize] = '\0';
                stringHandler(uartInputBuffer, uartInputSize);
                uartInputSize = 0;
            } else {
//                printf("Found character: '%c': %x\r\n", c, c);
                
                if ((foundEscChar && foundCtrlChar) || c == '\t' || c == ' ' || c == 0x7f) {
                    // Remove the control code character from the text buffer:
                    uartInputSize--;

                    // TODO: Improve the keyboard interface so we don't override the arrow keys!
                    // Maybe have tab switch fields instead of arrow keys?
                    // Maybe add "modifier key" support. That would take adding more ctrl chars support...
                    // TODO: Make this and the control character handling use a single switch statement...
                    switch(c) {
                        case 'A':
                            // up arrow
//                            printf("up arrow!\n");
                            eventType = UP;
                            break;
                        case 'B':
                            // down arrow
//                            printf("down arrow!\n");
                            eventType = DOWN;
                            break;
                        case 'D':
                            // left arrow
//                            printf("Left arrow!\n");
                            eventType = LEFT;
                            break;
                        case 'C':
                            // right arrow
//                            printf("right arrow!\n");
                            eventType = RIGHT;
                            break;
                        case '\t':
                            // tab pressed
//                            printf("tab pressed!\n");
                            eventType = TAB;
                            break;
                        case ' ':
                            // space pressed
//                            printf("space pressed!\n");
                            eventType = SPACE;
                            break;
                        case 0x7f:
                            // backspace pressed
//                            printf("backspace pressed!\n");
                            eventType = BACKSPACE;
                            break;
                        default:
                            printf("Unkown control character: '%c': %x\n", c, c);
                            break;
                    }
                    inputHandler(eventType);
                    foundEscChar = false;
                    foundCtrlChar = false;
                } else {
                    if (foundEscChar && c == 0x5b) {
                        // [ found... look out for a control character!
                        foundCtrlChar = true;
                    } else if (foundEscChar) {
                        // Next character was not a [ so no control character found!
                        // Someone just hit escape...
                        foundEscChar = false;
                        printf("\rEscape key pressed!\n");
                    }
                    
                    if (c == 0x01b) {
                        // Escape found... look out for a 0x5b on the next pass!
                        foundEscChar = true;
                    }
                }
            }
        }

        if (foundEscChar) {
            // No more characters, so we don't have a control character.
            // Someone just hit escape...
            foundEscChar = false;
            printf("Escape key pressed!\r\n");
        }

        reset_buffer();
    }

    return toRet;
}
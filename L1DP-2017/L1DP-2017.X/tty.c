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

void setStringHandlerCallback(int (*callback)(unsigned char *inputBuffer, uint16_t inputSize)) {
    stringHandler = callback;
}

int handleSerialInput() {
    // My serial handler for the demo's keyboard input:
    // TODO: Manage some amount of command input. Single char will work for now...
    int toRet = -1;
    uint16_t i;
    if (dataAvailableU1) {
//        printf("Got %i chars of data: %s\r\n", rxSize, rx1Buf);
        dataAvailableU1 = false;

        for (i = 0; i < rxSizeU1; i++) {
            unsigned char c = rxBufU1[i];

            uartInputSize++;
            uartInputBuffer[uartInputSize] = c;

            //handle number chars:
            if (c == '\n' || c == '\r') {
                // Handle the string received so far:
                stringHandler(uartInputBuffer, uartInputSize);
                uartInputSize = 0;
                uartInputBuffer[0] = NULL; // probably don't need to do this...
            } else {
                printf("Found character: '%c': %x\r\n", c, c);
                
                if (foundEscChar && foundCtrlChar) {
                    // Remove the control code character from the text buffer:
                    uartInputSize--;

                    // TODO: Make this handle more complex codes than single characters:
                    switch(c) {
                        case 'D':
                            // left arrow
                            printf("Left arrow!\r\n");
                            break;
                        case 'C':
                            // right arrow
                            printf("right arrow!\r\n");
                            break;
                        case 'A':
                            // up arrow
                            printf("up arrow!\r\n");
                            break;
                        case 'B':
                            // down arrow
                            printf("down arrow!\r\n");
                            break;
                        default:
                            printf("Unkown control character: '%c': %x\r\n", c, c);
                            break;
                    }
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
                        printf("Escape key pressed!\r\n");
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
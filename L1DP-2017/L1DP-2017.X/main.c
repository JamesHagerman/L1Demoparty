// Untitled
// by: jamisnemo
// for: LayerOne Demoparty 2017
// chip: PIC24FJ256DA206
//
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <xc.h>
#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"
#include "fb_control.h"
#include "color_management.h"

#include "serial.h"
#include "text.h"
#include "music.h"
#include "sprites.h"

#include "drawing_helpers.h"
#include "demo_management.h"

// Include all scene definitions:
#include "intro.h"
#include "road.h"
#include "credits.h"

//#include "particles.h"
//#include "screens.h"
//#include "testgfx.h"

// CONFIG3
#pragma config WPFP = WPFP255           // Write Protection Flash Page Segment Boundary (Highest Page (same as page 170))
#pragma config SOSCSEL = EC             // Secondary Oscillator Power Mode Select (External clock (SCLKI) or Digital I/O mode()
#pragma config WUTSEL = LEG             // Voltage Regulator Wake-up Time Select (Default regulator start-up time is used)
#pragma config ALTPMP = ALTPMPEN        // Alternate PMP Pin Mapping (EPMP pins are in alternate location mode)
#pragma config WPDIS = WPDIS            // Segment Write Protection Disable (Segmented code protection is disabled)
#pragma config WPCFG = WPCFGDIS         // Write Protect Configuration Page Select (Last page (at the top of program memory) and Flash Configuration Words are not write-protected)
#pragma config WPEND = WPENDMEM         // Segment Write Protection End Page Select (Protected code segment upper boundary is at the last page of program memory; the lower boundary is the code page specified by WPFP)

// CONFIG2
#pragma config POSCMOD = HS             // Primary Oscillator Select (HS Oscillator mode is selected)
#pragma config IOL1WAY = ON             // IOLOCK One-Way Set Enable (The IOLOCK bit (OSCCON<6>) can be set once, provided the unlock sequence has been completed. Once set, the Peripheral Pin Select registers cannot be written to a second time.)
#pragma config OSCIOFNC = OFF           // OSCO Pin Configuration (OSCO/CLKO/RC15 functions as CLKO (FOSC/2))
#pragma config FCKSM = CSDCMD           // Clock Switching and Fail-Safe Clock Monitor (Clock switching and Fail-Safe Clock Monitor are disabled)
#pragma config FNOSC = PRIPLL           // Initial Oscillator Select (Primary Oscillator with PLL module (XTPLL, HSPLL, ECPLL))
#pragma config PLL96MHZ = ON            // 96MHz PLL Startup Select (96 MHz PLL is enabled automatically on start-up)
#pragma config PLLDIV = DIV2            // 96 MHz PLL Prescaler Select (Oscillator input is divided by 2 (8 MHz input))
#pragma config IESO = ON                // Internal External Switchover (IESO mode (Two-Speed Start-up) is enabled)

// CONFIG1
#pragma config WDTPS = PS32768          // Watchdog Timer Postscaler (1:32,768)
#pragma config FWPSA = PR128            // WDT Prescaler (Prescaler ratio of 1:128)
#pragma config WINDIS = OFF             // Windowed WDT (Standard Watchdog Timer enabled,(Windowed-mode is disabled))
#pragma config FWDTEN = OFF             // Watchdog Timer (Watchdog Timer is disabled)
#pragma config ICS = PGx1               // Emulator Pin Placement Select bits (Emulator functions are shared with PGEC1/PGED1)
#pragma config GWRP = OFF               // General Segment Write Protect (Writes to program memory are allowed)
#pragma config GCP = OFF                // General Segment Code Protect (Code protection is disabled)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG port is disabled)

//=========

// Variable declarations:
char projectName[] = "Code MESS";
char buf[20]; // Buffer for any text rendering sprintf() calls

volatile uint8_t serialStoryIndex = 100;

void loadScenes() {
    addScene(introScene);
    addScene(roadScene);
    addScene(creditsScene);
}

void initDemo() {
    printf("Initing demo...\r\n");
    
    blank_background();
    loadAllSprites();
    
    // Configure the stories initial state:
    // Add the scenes:
    story_state.sceneCount = 0; // Start we zero scenes...
    loadScenes();
    
    // Start on the correct scene:
    uint8_t startSceneIndex = 0;
    story_state.currentScene = startSceneIndex;
    switchScene(startSceneIndex);

    // Pause the demo until the UART or GPIO starts it:
    story_state.storyPlaying = false;
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
            char c = rxBufU1[i];

            //handle number chars:
            if (c >= '0' && c <= '9') {
                uint16_t numberValue = (uint16_t)c - 0x30;
                toRet = numberValue;
            } else if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) {
                printf("A letter!: '%c'\r\n", c);
                if (c == 'r') {
                    printf("Restting frames\r\n");
                    frames = 0;
                } else if (c == 'e') {
                    printf("Toggling CLUT\r\n");
                    _CLUTEN = story_state.clutState = !story_state.clutState;
                }
            } else if (c == '\n' || c == '\r') {
                //do nothing...
            } else {
                printf("That char is not a number or letter: '%c'\r\n", c);
            }
        }

        reset_buffer();
    }

    return toRet;
}

int main(void) {
    // Setup the hardware before anything else:
    setupHardware();

    // Start of the demo!!!!!!!!!!!!!!!
    printf("Welcome to project: %s!\r\n", projectName);
    initDemo();

//    char someInput[128] = "";
//    printf("Enter some string: ");
//    scanf("%s", someInput);
//    printf("You entered: '%s'", someInput);

    // Start drawing the demo. This is the main loop:
    while (1) {
        frameStart();
        // Start frame drawing:

        // Manage any newly available data from the serial port:
        serialStoryIndex = handleSerialInput();

        // Draw the current Scene:
        drawCurrentScene();

        // Play only if we've got that jumper on r28
        checkForJumper();
        if (story_state.storyPlaying == true) {
            frames++;
            checkSceneFinished();
        } else {
            chr_print(jumperMessage, 2, VER_RES-(21*3));
        }

        drawFPS(buf); // actually draws frames counter value

        // End frame drawing
        frameEnd();
    }

    return 0; // Never hit.
}

// Code Crow
// by: jamisnemo
// for: LayerOne Demoparty 2016
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
// Demo method declarations:
void drawIntro(uint16_t frames);
void drawFPS();
int handleSerialInput(uint16_t oldStoryPart);

// Variable declarations:
char projectName[] = "Code Crow";
char buf[20]; // Buffer for any text rendering sprintf() calls
volatile uint8_t storyPart = 0;
volatile uint8_t serialStoryIndex = 100;

//=========
// Static inline functions:
inline void fast_pixel(unsigned long ax, unsigned long ay) {
    //ax += (ay << 9) + (ay << 7);
    ax += ay*HOR_RES;
    while(_CMDFUL) continue;
    G1CMDL = ax;
    G1CMDH = RCC_DESTADDR | ax>>16;

    while(_CMDFUL) continue;
    G1CMDL = 0x1006; // This needs to be changed for non 80x
    G1CMDH = RCC_RECTSIZE;

    while(_CMDFUL) continue;
    G1CMDL = 0x60;
    G1CMDH = RCC_STARTCOPY;
    Nop();
}

// Story management:
inline void playSelected() {
    switch (storyPart) {
        case 0:
            _CLUTEN = 1;
            drawIntro(frames);
            break;
        case 1:
            _CLUTEN = 1; // let 'er rip!
//            drawWarp(frames);
            break;
        case 2:
            _CLUTEN = 0; // Now ditch that shit and get back to normal colors.
//            drawBoringGround(frames);
            break;
        case 3:
            _CLUTEN = 0;
//            drawPsyGround(frames);
            break;
        case 4:
            _CLUTEN = 0;
//            drawEnding(frames);
            break;
        default: 
//            drawIntro(frames);
            break;
    }
}

inline void manageStory() {
    if ( frames < 400 ) {
        storyPart = 0; // intro 700
    } else if (frames < 800) {
        storyPart = 2; // dirt + aliens 100
    } else if (frames < 1300) {
        storyPart = 3; // psych alien 500
    } else if (frames < 1500) {
        storyPart = 1; // warp 200
    } else if (frames < 2500) {
        storyPart = 4; // credits 1000
    }
}

//================================
// Start of music playing methods:
//_T1Interrupt() is the T1 interrupt service routine (ISR).
void __attribute__((__interrupt__)) _T1Interrupt(void);
void __attribute__((__interrupt__, auto_psv)) _T1Interrupt(void)
{
	static unsigned char idx = 0;
        if (storyPart == 3) {
            PORTB = (zigzagtable[idx]/4) << 8;
        } else if (storyPart == 1 ) {
            PORTB = (saw[idx]/4) << 8;
        } else {
            PORTB = (sinetable[idx]/4) << 8;
        }
	idx += 1;
	_T1IF = 0;
}


//================================
// Start of frame drawing methods:
// START OF SCENES
// START OF SCENES
// START OF SCENES

uint16_t maxY = 474; // 480-PIX_H
volatile int c = 0; // A char for the uart

// Start drawIntro scene:
uint8_t color = 0;
// This should be one greater than the index of the last color we care about in
// the palette for the Crow sprite:
uint8_t clutStart = 5;
int speed = 1;
int dir = 1;
int xPosition = 0;
uint8_t rotAngle = 0;
int currentSpriteIndex = 0;
int currentSpriteOffset = 1;
int currentSpriteFrameCount = 3;
int spriteStepTimeout = 0;
int spriteStepTrigger = 10;
void initIntro() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);
    // Setup bird sprite offsets:
    currentSpriteIndex = currentSpriteOffset;
    // Setup colors for bird sprite using palette (manually!?! kids these days...)
    // clut_set(0) is black
    clut_set(1, 0x4208); // gray
    clut_set(2, 0x9a60); // orange
    clut_set(3, 0xb800); // red
    clut_set(4, 0x2124); // dark gray: #232323: 35, 35, 35
    calc_colors(clutStart); // Build a rainbow starting with CLUT index 4
    _CLUTEN = 1; // enable the CLUT for this scene
}
void drawIntro(uint16_t frame) {
    
    uint16_t i, j, sizeW, sizeH, vertOffset;
    sizeW = 1;
    sizeH = 1*PIX_H;
    vertOffset = VER_RES/4;
    
    uint8_t colorScrollSpeed = 25;

    // Safety third:
    if (sizeH >= HOR_RES-1 || sizeW >= VER_RES-1 || sizeH <= 0 || sizeW <= 0) return;

    if (frame == 0 ) {
        // Draw background:
        for (i = 0; i < (VER_RES-1)/2; i+=sizeH) { // y
            for (j = 0; j < HOR_RES-1; j+=sizeW) { // x
                color = 0x4; // dark gray background
                rcc_color(color);
                rcc_draw(j, i + vertOffset, sizeW, sizeH);            
            }
        }
        
        // Manage Crow:
        currentSpriteIndex = currentSpriteOffset; // sleep state
        
    } else {
        // Draw warp! Finally! A Warp! FUCK yeah!!
        for (i = 0; i < (VER_RES-1)/2; i+=sizeH) { // y
            for (j = 0; j < HOR_RES-1; j+=sizeW) { // x
    //            color = i + j;

                color = (uint8_t)(frame * colorScrollSpeed) +
                        sinetable[(uint8_t)i] + 
                        sinetable[(uint8_t)j*3];

                if (color == 0 ) {
                    color = 1;
                }else if (color == 0xff) {
                    color = 0xfe;
                }

                // This is a hack to drop our defined colors from the lookup.
                if (color < clutStart) {
                    color = clutStart;
                }

                rcc_color(color);
                rcc_draw(j, i + vertOffset, sizeW, sizeH);            
            }
        }
        
        // Manage Crow:
        spriteStepTimeout++;
        if (spriteStepTimeout > spriteStepTrigger + 30) {
            currentSpriteIndex = currentSpriteOffset + 1; // awake state
        } else {
            currentSpriteIndex = currentSpriteOffset + 2; // caw state
        }
//        spriteStepTimeout++;
//        if (spriteStepTimeout > spriteStepTrigger) {
//            currentSpriteIndex++;
//            spriteStepTimeout = 0;
//        }
//        if ( currentSpriteIndex >= currentSpriteOffset + currentSpriteFrameCount
//                || currentSpriteIndex == currentSpriteOffset) {
//            currentSpriteIndex = currentSpriteOffset + 1;
//        }
    }
    drawSprite(2, VER_RES-(25*PIX_H)-(20*PIX_H), currentSpriteIndex, rotAngle);
    
//    if (xPosition + (speed *dir) > maxX || xPosition + (speed *dir) < 0) {
//        dir = dir * -1;
//    }
//    xPosition = xPosition + (speed * dir);
//    
//    rcc_color(0x3);
//    line(0, vertOffset*PIX_H, HOR_RES-1, vertOffset*PIX_H);
//    line(0, maxY-(vertOffset*PIX_H), HOR_RES-1, maxY-(vertOffset*PIX_H));
//    printf("x: %i, dir: %i\r\n", xPosition, dir);
    
    
    if (frame != 0 ) {
        // We have to calculate horizontal movement manually here. No way to 
        // detect the drawable width of a string of text at this point.
        sprintf(buf, "Code Crow");
        chr_print(buf, 0, (21*5)-4); // x, y are bounded in chr_print
        sprintf(buf, "jamisnemo");
        chr_print(buf, HOR_RES-38, VER_RES-(21*6)); // x, y are bounded in chr_print
    }

}
// end drawIntro scene

// END OF SCENES
// END OF SCENES
// END OF SCENES


void loadScenes() {
    story_state.scenes[0] = (SCENE) {0, 1000, &initIntro, &drawIntro, "Intro"};
}
void initDemo() {
    printf("Initing demo...\r\n");
    // Calculate some stuff
    maxY = 480-PIX_H; // validate that the maxX size is correct.
    
    blank_background();
    loadAllSprites();
    
    // Build the scenes:
    loadScenes();
    
    // Pause the demo until the UART or GPIO starts it:
    story_state.storyPlaying = false;
    
    // Start on the first scene:
    story_state.currentScene = 0;
    switchScene(0);
}
void codecrow() {
    // Start of the 2016 demo!!!!!!!!!!!!!!!
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

        // Make sure we reset our frame count to zero after some time. Not sure 
        // if we even want this except for arbitrary looping...
        manageFrameReset(); 

        // Manage any newly available data from the serial port:
        serialStoryIndex = handleSerialInput(storyPart);

        // TODO: Manage demo state somewhere...
        if (serialStoryIndex == 100) {
            manageStory();
        } else {
//                printf("story part being set manually");
            storyPart = serialStoryIndex;
        }

        // Switch to, and draw our selected frame:
        drawCurrentScene();
        
        // Play only if we've got that jumper on r28
        checkForJumper();
        if (story_state.storyPlaying == true) {
            frames++;
        } else {
            sprintf(buf, "Please jump R28 to");
            chr_print(buf, 2, VER_RES-(21*4)); // x, y are bounded in chr_print
            sprintf(buf, "to Ground...");
            chr_print(buf, 22, VER_RES-(21*3)); // x, y are bounded in chr_print
        }

        // End frame drawing
        frameEnd();
    }
}




// Frame/Demo management:
void drawFPS() {
    // TODO: Print the fps to the UART cleanly without borking our term...
    sprintf(buf, "f:%i", frames);
    chr_print(buf, 0, VER_RES-(21*1)); // x, y are bounded in chr_print
}

int handleSerialInput(uint16_t oldStoryPart) {
    // My serial handler for the demo's keyboard input:
    // TODO: Manage some amount of command input. Single char will work for now...
    uint16_t i, storyPart = 200;
    if (dataAvailable) {
//        printf("Got %i chars of data: %s\r\n", rxSize, rx1Buf);
        dataAvailable = false;

        for (i = 0; i < rxSize; i++) {
            char c = rx1Buf[i];

            //handle number chars:
            if (c >= '0' && c <= '9') {
                uint16_t numberValue = (uint16_t)c - 0x30;
                storyPart = numberValue;
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

        if (oldStoryPart != storyPart) {
            printf("Found story part: %u\r\n", storyPart );
            return storyPart;
        }
    }

    return oldStoryPart;
}



int main(void) {
    setupHardware();
    codecrow(); // Actually run the demo! This will loop forever.
    return 0; // Never hit.
}

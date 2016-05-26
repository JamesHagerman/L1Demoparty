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

_CONFIG1(FWDTEN_OFF & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2(POSCMOD_HS & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2)
_CONFIG3(ALTPMP_ALTPMPEN & SOSCSEL_EC)

//=========
// Demo method declarations:
void drawIntro(uint16_t frames);
void drawFPS();
int handleSerialInput(uint16_t oldStoryPart);

// Variable declarations:
char projectName[] = "Code Crow";
char buf[20]; // Buffer for any text rendering sprintf() calls
volatile uint16_t storyPart = 0;
volatile uint16_t serialStoryIndex = 100;

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
            _CLUTEN = 0;
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
uint16_t maxX = 474; // 480-PIX_H

// for drawIntro()
uint16_t color = 0;
volatile int c = 0;
int speed = 1;
int dir = 1;
int xPosition = 0;



void initDemo() {
    // Calculate some stuff
    maxX = 480-PIX_H; // validate that the maxX size is correct.
    
    blank_background();
    loadAllSprites();
    calc_colors();
    _CLUTEN = 0; // WE're only gonna turn on the CLUT when we REALLY need the speed.
}

void initIntro() {
    
}
void drawIntro(uint16_t frame) {

//    yMax = ((int)VER_RES)-h;
//    drawBouncingBall(frame);

//    drawSprite(1, 1*PIX_H, 4, 0);
    
    if (xPosition + (speed *dir) > maxX || xPosition + (speed *dir) < 0) {
        dir = dir * -1;
    }
    xPosition = xPosition + (speed * dir);
    
    rcc_color(0x3);
    
//    line(30, 0*6, 10, maxX);
//    line(45, 0*6, 25, maxX);
//    printf("x: %i, dir: %i\r\n", xPosition, dir);
    
    uint16_t i, j, sizeW, sizeH, vertOffset;
    sizeW = 1;
    sizeH = 1*PIX_H;
    vertOffset = VER_RES/4;

    if (sizeH >= HOR_RES-1 || sizeW >= VER_RES-1 || sizeH <= 0 || sizeW <= 0) return;

    for (i = 0; i < (VER_RES-1)/2; i+=sizeH) { // y
        for (j = 0; j < HOR_RES-1; j+=sizeW) { // x
//            hsvtorgb(&r,&g,&b,i*j,sat,val);
//            color = get8bppRGBColor(r,g,b);
            color = frame+i+j;
//            rcc_color(rand());
            rcc_color(color);
            rcc_draw(j, i + vertOffset, sizeW, sizeH);
        }
    }

//    sprintf(buf, "Code Crow");
//    chr_print(buf, 10*4, VER_RES-(21*9)); // x, y are bounded in chr_print
//    sprintf(buf, "jamisnemo");
//    chr_print(buf, 0, VER_RES-(21*6)); // x, y are bounded in chr_print

}

void textDrawingTests() {
    // ToDo: replace this with the CLUT. Like that will ever happen.
//    hsvtorgb(&r,&g,&b,frames,sat,val);
//    color = get8bppRGBColor(r,g,b);
//    color = get16bppRGBColor(r,g,b);
//
//    // Draw the beautiful font we cobbled together
//    sprintf(buf, "ABCDEFGHIJKLMNOP");
//    chr_print(buf, 0, 0); // x, y are bounded in chr_print
//
//    sprintf(buf, "abcdefghijklmnop"); // klmnopqrstuvwxyz
//    chr_print(buf, 0, 21); // x, y are bounded in chr_print
//
//    sprintf(buf, "QRSTUVWXYZ");
//    chr_print(buf, 0, 21*2); // x, y are bounded in chr_print
//
//    sprintf(buf, "qrstuvwxyz");
//    chr_print(buf, 0, 21*3); // x, y are bounded in chr_print
}

void codecrow() {
    // Start of the 2016 demo!!!!!!!!!!!!!!!
    initDemo();
    
    printf("Welcome to project: %s!\r\n", projectName); 
    
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
//            printf("story part being set manually");
            storyPart = serialStoryIndex;
        }

        // Switch to, and draw our selected frame:
        playSelected();  

        // End frame drawing
        frameEnd();
        frames++;    
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
    uint16_t i, storyPart;
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
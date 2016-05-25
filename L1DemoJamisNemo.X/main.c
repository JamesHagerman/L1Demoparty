// Code Crow
// by: jamisnemo
// for: LayerOne Demoparty 2016
//
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <xc.h>
#include "system.h" // declares FCY
#include <libpic30.h>

#include "color_management.h"
#include "resolution_management.h"

#include "music.h"
#include "sprites.h"
//#include "particles.h"
//#include "screens.h"
//#include "testgfx.h"
#include "serial.h"
#include "drawing_helpers.h"
#include "text.h"
#include "fb_control.h"

_CONFIG1(FWDTEN_OFF & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2(POSCMOD_HS & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2)
_CONFIG3(ALTPMP_ALTPMPEN & SOSCSEL_EC)

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

//=========
// Demo method declarations:
void drawIntro(uint16_t frames);

bool ledState = true;

uint8_t r, g, b, hue, sat = 255, val = 255;
char buf[20];
int x = 0;
int y = 0;
int xDir = 1;
int yDir = 1;
int w;
int h;
int xSpeed;
int ySpeed;
int xMin;
int yMin;
int xMax;
int yMax;
int xOld, yOld;

uint8_t aa = 1;
uint16_t color = 0;

uint16_t frames = 0;
volatile uint16_t storyPart = 100;
volatile uint16_t serialStoryIndex = 100;


// Frame/Demo management:
void setupHardware() {
    ANSB = 0x0000;
    ANSC = 0x0000;
    ANSD = 0x0000;
    ANSF = 0x0000;
    ANSG = 0x0000;
    TRISB = 0x0000;
    
    // Set pins r18 and r28 as outputs:
    TRISBbits.TRISB4 = 0;
    TRISBbits.TRISB5 = 0;
    // Set initial value on those pins:
    PORTBbits.RB4 = 0;
    PORTBbits.RB5 = 0;

        // Setup interrupts:
#ifdef DOUBLE_BUFFERED
    _VMRGNIF = 0;
//    _HMRGNIF = 0;
//    _HMRGNIE = 1;
    _VMRGNIE = 1;
    _GFX1IE = 1;
#else
    _VMRGNIF = 0;
    _VMRGNIE = 1;
    _GFX1IE = 1;
#endif
    
    // Call out to some other .c files to init some other functionality:
    config_uart(115200UL);
    config_graphics();
    config_chr(); // config the character GPU
    config_timer();
    
   
    // Validate that both buffers start empty:
#ifdef DOUBLE_BUFFERED
    rcc_setdest(GFXDisplayBuffer[0]);
    blank_background();
    rcc_setdest(GFXDisplayBuffer[1]);
    blank_background();
#endif
    
}

void frameStart() {
#ifdef	DOUBLE_BUFFERED
    swapWorkAreas();
#else
//    blank_background(); // Clearing the buffer here means tearing for some reason
#endif
}

void frameEnd() {
    // Cleanup the right most column:
    rcc_color(0);
    rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); // Weird things occur if the right column isn't 0

#ifdef	DOUBLE_BUFFERED
    waitForBufferFlip();
#else
    waitForVSync();
#endif
}

inline void manageFrameReset() {
    if (frames > 2500) {
        frames = 0;
    }
}

void drawFPS() {
    // TODO: Print the fps to the UART cleanly without borking our term...
    sprintf(buf, "f:%i", frames);
    chr_print(buf, 0, VER_RES-(21*1)); // x, y are bounded in chr_print
}

void statusLED() {
    // Blink some pins:
    ledState = !ledState;
    PORTBbits.RB4 = ledState;
    PORTBbits.RB5 = ledState;
    __delay_ms(100);
}

// UART command parser:
int handleSerialInput(uint16_t oldStoryPart) {
    // My serial handler for the demo's keyboard input:
    // TODO: Manage some amount of command input. Single char will work for now...
    uint16_t i, storyPart;
    if (dataAvailable) {
//        PORTBbits.RB4 = 1;
//        PORTBbits.RB5 = 1;
//        __delay_ms(100);
//        __delay_ms(100);
//        printf("wat\r\n");
        printf("Got %i chars of data: %s\r\n", rxSize, rx1Buf);
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

//        if (idx%2 == 0) {
        if (storyPart == 3) {
            PORTB = (zigzagtable[idx]/4) << 8;
        } else if (storyPart == 1 ) {
            PORTB = (saw[idx]/4) << 8;
        } else {
            PORTB = (sinetable[idx]/4) << 8;
        }
//            PORTB = (saw[idx]/4) << 8;
//        } else {
//            PORTB = zigzagtable[idx] << 8;
//        }

//            PORTB = 1<<idx;
	idx += 1;
	_T1IF = 0;
}


//================================
// Start of frame drawing methods:
void drawIntro(uint16_t frames) {

    yMax = ((int)VER_RES)-h;
//    drawBouncingBall(frames);

    drawSprite(1, 1*PIX_H, 4, 0);

    sprintf(buf, "Hexadecimal Aliens");
    chr_print(buf, 0, VER_RES-(21*7)); // x, y are bounded in chr_print
    sprintf(buf, "by jamisnemo");
    chr_print(buf, 0, VER_RES-(21*6)); // x, y are bounded in chr_print

}

void textDrawingTests() {
    // ToDo: replace this with the CLUT. Like that will ever happen.
    hsvtorgb(&r,&g,&b,frames,sat,val);
    color = get8bppRGBColor(r,g,b);
    color = get16bppRGBColor(r,g,b);

    // Draw the beautiful font we cobbled together
    sprintf(buf, "ABCDEFGHIJKLMNOP");
    chr_print(buf, 0, 0); // x, y are bounded in chr_print

    sprintf(buf, "abcdefghijklmnop"); // klmnopqrstuvwxyz
    chr_print(buf, 0, 21); // x, y are bounded in chr_print

    sprintf(buf, "QRSTUVWXYZ");
    chr_print(buf, 0, 21*2); // x, y are bounded in chr_print

    sprintf(buf, "qrstuvwxyz");
    chr_print(buf, 0, 21*3); // x, y are bounded in chr_print
}

void codecrow() {
    // Start of the 2016 demo!!!!!!!!!!!!!!!
    
    blank_background();
    loadAllSprites();
    calc_colors();
//    config_clut(); // WE're only gonna turn on the CLUT when we REALLY need the speed.
//    initBouncingBallLimits();
    
    //    char readBuff[128];
    char projectName[] = "Code Crow";
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

int main(void) {
    setupHardware();
    codecrow(); // Actually run the demo! This will loop forever.
    return 0; // Never hit.
}
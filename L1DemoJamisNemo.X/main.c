// Hexadecimal Aliens
// by: jamisnemo
// for: LayerOne Demoparty 2015
//
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
//#include <float.h>
#include "system.h" // declares FCY
#include <libpic30.h>

#include "color_management.h"
#include "resolution_management.h"
//#include "fonts.h" // moved to text.h
#include "music.h"
#include "sprites.h"
//#include "particles.h"
//#include "screens.h"
//#include "testgfx.h"
//#include "serial.h"
#include "helpers.h"
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
uint16_t storyPart = 0;

void drawCenteredBox(uint16_t size, uint16_t color) {
    int ox,oy;

    if (size > HOR_RES-1) {
        size = HOR_RES-1;

    }
    if (size*PIX_H > VER_RES-1) {
        size = VER_RES-1;
    }

    ox = HOR_RES/2-size/2;
    oy = (VER_RES)/2-(size*PIX_H)/2;

    if (ox >= HOR_RES-1 || oy >= VER_RES-1 || ox <= 0 || oy <= 0) return;

    rcc_color(color);
    rcc_draw(ox, oy, size, size*PIX_H);
}

void drawWarp(uint16_t frame) {
    // Drew a warp using a sprite. It failed. Drastic measures time?
    drawSprite(40, 40*PIX_H, 12, 0, -1);
    
//    int i, j;
//    uint16_t color;
//    uint8_t r, g, b, hue, sat = 255, val = 255;
//
//    for (i = 60*PIX_H; i < VER_RES-PIX_H; i += PIX_H) {
//        hsvtorgb(&r,&g,&b,frame+(i*2),sat,val);
////        color = get16bppRGBColor(r,g,b);
//        color = get8bppRGBColor(r,g,b);
//        rcc_color(color);
//        for (j = 0; j < HOR_RES-1; j++) {
//            fast_pixel(j, i); // i+(i*(int)VER_RES)
//        }
//    }

    // Build color based on frame:
//    hsvtorgb(&r,&g,&b,frame,sat,val);
//    color = get16bppRGBColor(r,g,b);
//    rcc_color(color);

//    uint16_t size = frame/10;

//    if (size >= HOR_RES-1 || size >= VER_RES-1 || size <= 0 || size <= 0) return;
//
//    rcc_color(color);
//    line(0,0,frame, frame/2);


//    if (frame%3) {
//        size = frame*6;
//    }
//
//    if (size > 50) {
//        size = 50;
//    }
//    for (i=size; i > 0; i--) {
//        if (i%2) {
//            hsvtorgb(&r,&g,&b,i,sat,val);
//            color = get16bppRGBColor(r,g,b);
//        } else {
//            color = 0;
//        }
//
//        drawCenteredBox(40, color);
//    }

//    int x, y;
//    int ox,oy, radius;
//    radius = 30;
//    ox = HOR_RES/2;
//    oy = VER_RES/2;
//    for(y=-radius; y<=radius; y++) {
//        for(x=-radius; x<=radius; x++) {
//            rcc_color(color);
//            if(x*x+y*y <= radius*radius + radius*0.8f) fast_pixel(ox+x, oy+y*PIX_H);
//        }
//    }

        

}

void drawGround(uint16_t frame) {
    int i, j;
    uint16_t color;
    uint8_t r, g, b, sat = 255, val = 255; //hue
    int p = 40;

    // ground
    for (i = 50*PIX_H; i < VER_RES-PIX_H; i += PIX_H) {
        hsvtorgb(&r,&g,&b,frame*2-(p^2),sat,val);
//        color = get16bppRGBColor(r,g,b);
        color = get8bppRGBColor(r,g,b);
        rcc_color(color);
        p -= 2;
        if (p < 0) {
            p = 0;
        }
        for (j = 0; j < HOR_RES-1; j++) {
            fast_pixel(j, i); // i+(i*(int)VER_RES)
        }
    }

    // cat and text
    drawSprite((HOR_RES-14)-s[8].width/2, (VER_RES-120)-((s[8].height*PIX_H)/2), 8+(frames%4), 0, -1);
    sprintf(buf, "Hi. How 'bout");
    chr_print(buf, 0, VER_RES-(21*7)); // x, y are bounded in chr_print
    sprintf(buf, "a quick story?");
    chr_print(buf, 0, VER_RES-(21*6)); // x, y are bounded in chr_print
}

void drawBoringGround(uint16_t frames) {
    frames = 0;
    drawGround(frames);
}

void initBouncingBallLimits() {
    w = 1;
    h = 1*PIX_H;
    xSpeed = w;
    ySpeed = h;//*PIX_H;
    xMin = 0;
    yMin = 0*PIX_H;
    xMax = ((int)HOR_RES)-w-1; // -1 to keep it off the right side of the screen
    yMax = ((int)VER_RES)-h-180;
}

void drawIntro(uint16_t frames) {

    hsvtorgb(&r,&g,&b,frames,sat,val);
    color = get8bppRGBColor(r,g,b);
//            color = get16bppRGBColor(r,g,b);

    // Draw the bouncing pixel:
    xOld = x;
    yOld = y;
    x += xDir * xSpeed;
    y += yDir * ySpeed;

    if (x > xMax) {
        x = xMax;
        xDir *= -1;
    }
    if (y > yMax) {
        y = yMax;
        yDir *= -1;
    }
    if (x <= xMin) {
        x = xMin;
        xDir *= -1;
    }
    if (y <= yMin) {
        y = yMin;
        yDir *= -1;
    }
    rcc_color(0); // delete last pixel position
    rcc_draw(xOld, yOld, w, h);
    rcc_color(color); // draw new position
    rcc_draw(x, y, w, h);
    fast_pixel(x,y);

    drawSprite(1, 1*PIX_H, 4, 0,  s[4].height/2);

    sprintf(buf, "INTRO GOES HERE");
    chr_print(buf, 0, VER_RES-(21*7)); // x, y are bounded in chr_print
    sprintf(buf, "a quick story?");
    chr_print(buf, 0, VER_RES-(21*6)); // x, y are bounded in chr_print
}

void drawEnding() {
    sprintf(buf, "That's your story.");
    chr_print(buf, 0, VER_RES-(21*7)); // x, y are bounded in chr_print
    sprintf(buf, "Did you enjoy?");
    chr_print(buf, 0, VER_RES-(21*6)); // x, y are bounded in chr_print
}

inline void manageStory() {
//    if ( frames < 400 ) {
//        storyPart = 0; // intro 400
//    } else if (frames < 425) {
//        storyPart = 1; // warp 25
//    } else if (frames < 625) {
//        storyPart = 2; // dirt + aliens 200
//    } else if (frames < 925) {
//        storyPart = 3; // psych alien 300
//    } else if (frames < 1025) {
//        storyPart = 4; // credits 100
//    } else if (frames > 1100) {
//        frames = 0;
//    }

    storyPart = 1;

    switch (storyPart) {
        case 0:
            drawIntro(frames);
            break;
        case 1:
            drawWarp(frames);
            break;
        case 2:
            drawBoringGround(frames);
            break;
        case 3:
            drawGround(frames);
            break;
        case 4:
            drawEnding(frames);
            break;
        default: drawIntro(frames);
    }
}

void hexalien() {

    while (1) {
            
#ifdef	DOUBLE_BUFFERED
        swapWorkAreas();
#else
//        blank_background(); // Clearing the buffer here means tearing for some reason
#endif

        // Start drawing all the elements.
        manageStory();

//        // ToDo: replace this with the CLUT. Like that will ever happen.
//        hsvtorgb(&r,&g,&b,frames,sat,val);
//        color = get8bppRGBColor(r,g,b);
//        color = get16bppRGBColor(r,g,b);
//
//        // Draw the beautiful font we cobbled together
//        sprintf(buf, "ABCDEFGHIJKLMNOP");
//        chr_print(buf, 0, 0); // x, y are bounded in chr_print
//
//        sprintf(buf, "abcdefghijklmnop"); // klmnopqrstuvwxyz
//        chr_print(buf, 0, 21); // x, y are bounded in chr_print
//
//        sprintf(buf, "QRSTUVWXYZ");
//        chr_print(buf, 0, 21*2); // x, y are bounded in chr_print
//
//        sprintf(buf, "qrstuvwxyz");
//        chr_print(buf, 0, 21*3); // x, y are bounded in chr_print
            
        sprintf(buf, "f:%i", frames);
        chr_print(buf, 0, VER_RES-(21*1)); // x, y are bounded in chr_print



        // Cleanup the right most column:
        rcc_color(0);
        rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); /* Weird things occur if the right column isn't 0 */\

#ifdef	DOUBLE_BUFFERED
        waitForBufferFlip();
#else
        waitForVSync();
#endif
        frames++;    
    }
}

int main(void) {

    ANSB = 0x0000;
    ANSC = 0x0000;
    ANSD = 0x0000;
    ANSF = 0x0000;
    ANSG = 0x0000;
    TRISB = 0x0000;

        // Setup interrupts:
#ifdef DOUBLE_BUFFERED
    _VMRGNIF = 0;
    _HMRGNIF = 0;
    _HMRGNIE = 1;
    _VMRGNIE = 1;
    _GFX1IE = 1;
#else
    _VMRGNIF = 0;
    _VMRGNIE = 1;
    _GFX1IE = 1;
#endif

    config_graphics();
    config_chr();
    config_timer();
    blank_background();
    loadAllSprites();
    initBouncingBallLimits();

#ifdef DOUBLE_BUFFERED
    rcc_setdest(GFXDisplayBuffer[0]);
    blank_background();
    rcc_setdest(GFXDisplayBuffer[1]);
    blank_background();
#endif

    hexalien();
    return 0;
}
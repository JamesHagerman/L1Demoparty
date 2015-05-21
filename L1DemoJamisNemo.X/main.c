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


uint8_t r, g, b, hue, sat = 255, val = 255;

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

void static inline drawSprite(uint16_t x, uint16_t y, uint8_t id, uint8_t rotation) {

	unsigned int w,h;
	uint16_t x1,y1;
	uint8_t color;

	if (x >= HOR_RES-1 || y >= VER_RES-1 || x <= 0|| y <= 0) return;

	for (h=0; h < s[id].height; h++) {
		for (w=0; w < s[id].width; w++) {
			color = s[id].data[w + s[id].width*h];
			// don't draw if it matches transparency color
			if (color == s[id].trans) continue;
			rcc_color(color);
//                        rcc_color(0xFC); // 8bit yellow == 0b111 111 00
			//rcc_color(rand()); //tv screen effect

			switch(rotation) {
				//  00 deg      0,0 1,0 2,0 ... 0,1
				//  90 deg CCW  7,0 7,1 7,2 ... 6,0
				// 180 deg      7,7 6,7 5,7 ... 7,6
				//  90 deg CW   0,7 0,6 0,5 ... 1,6
				case 0: // 0 degree
					x1 = x+w;
					y1 = y + (h<<2) + (h<<1);//y+(PIX_H*h);
					if (x1 >= HOR_RES-2) continue; //br
					if (y1 >= VER_RES-PIX_H) return; //ret
					fast_pixel(x1, y1);
					break;
				case 1: // 90 degree CW
					x1 = x+(s[id].width-h-1);
					y1 = y+(PIX_H*(w));
					if (x1 >= HOR_RES-1 || x1 <= 0) continue;
					if (y1 >= VER_RES-PIX_H || y1 <= 0) continue;
					fast_pixel(x1, y1);
					break;
				case 2: // 180 degree CW
					x1 = x+(s[id].width-w-1);
					y1 = y+(PIX_H*(s[id].height-h-1));
					if (x1 >= HOR_RES-1) continue;
					if (y1 >= VER_RES-PIX_H) continue;
					fast_pixel(x1, y1);
					break;
				case 3: // 90 degree CCW
					break;
				default:
					break;
			}
		}
	}
	//Nop();
}

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

void drawGround(uint16_t frame) {
    int i, j;
    uint16_t color;
    uint8_t r, g, b, hue, sat = 255, val = 255;
    int p = 40;

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
}

void drawWarp(uint16_t frame) {
    int i, j;
    uint16_t color;
    uint8_t r, g, b, hue, sat = 255, val = 255;

    for (i = 60*PIX_H; i < VER_RES-PIX_H; i += PIX_H) {
        hsvtorgb(&r,&g,&b,frame+(i*2),sat,val);
//        color = get16bppRGBColor(r,g,b);
        color = get8bppRGBColor(r,g,b);
        rcc_color(color);
        for (j = 0; j < HOR_RES-1; j++) {
            fast_pixel(j, i); // i+(i*(int)VER_RES)
        }
    }

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

#ifdef DOUBLE_BUFFERED
int next_fb = 0;
void waitForBufferFlip() {
    while(!_CMDMPT) continue; // Wait for GPU to finish drawing
    fb_ready = 1;
    while(fb_ready) continue; // wait for vsync
}

void swapWorkAreas() {
    rcc_setdest(GFXDisplayBuffer[next_fb]);
    next_fb = !next_fb;
    blank_background();
}
#else
void waitForVSync() {
//    while(!_CMDMPT) continue; // Wait for GPU to finish drawing
    while((!_CMDMPT) | _IPUBUSY | _RCCBUSY | _CHRBUSY) continue; // Wait for IPU, RCC, and CHR GPUs to finish drawing
    vSync = 1;
    while(vSync) continue; // wait for vsync
}
#endif

uint16_t frames = 0;
void jamis() {

        loadAllSprites();

        char buf[20];
        int x = 0;
        int y = 0;
        int xDir = 1;
        int yDir = 1;
        int w = 1;
        int h = 1*PIX_H;
        int xSpeed = w;
        int ySpeed = h;//*PIX_H;
        int xMin = 0;
        int yMin = 0*PIX_H;
        int xMax = ((int)HOR_RES)-w-1; // -1 to keep it off the right side of the screen
        int yMax = ((int)VER_RES)-h-180;
        int xOld, yOld;

        uint8_t aa = 1;
        uint16_t color = 0;

#ifdef DOUBLE_BUFFERED
        rcc_setdest(GFXDisplayBuffer[0]);
        blank_background();
        rcc_setdest(GFXDisplayBuffer[1]);
        blank_background();
#endif

        while (1) {
            
#ifdef	DOUBLE_BUFFERED
            swapWorkAreas();
#else
//            __delay_ms(10);
//            blank_background(); // Clearing the buffer here means tearing for some reason
            
#endif

//            color =  frames;
//            color = get8bppRGBColor(0,0,frames);
//            color = get16bppRGBColor(frames,0,0);

            hsvtorgb(&r,&g,&b,frames,sat,val);
            color = get8bppRGBColor(r,g,b);
//            color = get16bppRGBColor(r,g,b);

//            drawBorder(color);
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

            // Draw debug:
//            sprintf(buf, "Low: %lx", (unsigned long)GFXDisplayBuffer & 0xFFFFFF ); //((unsigned long)(GFXDisplayBuffer) & 0xFFFF)
//            chr_print(buf, ((int)HOR_RES)/2, ((int)VER_RES)/2);
//
//            sprintf(buf, "High: %lu", (unsigned long)GFXDisplayBuffer >> 16 & 0xFF );
//            chr_print(buf, ((int)HOR_RES)/2, 8+((int)VER_RES)/2);

            

//            drawSprite(HOR_RES/2-s[6].width/2, VER_RES/2-(s[6].height*PIX_H), 6, 0);
//            drawSprite(HOR_RES/2-s[0].width/2, VER_RES/2-(s[0].height*PIX_H), 0, 0);
//            drawSprite(HOR_RES/2, VER_RES/2-(s[0].height*PIX_H), 0, 0);
//            drawSprite(HOR_RES/2-s[0].width/2, VER_RES/2, 0, 0);
//            drawSprite(HOR_RES/2, VER_RES/2, 0, 0);
//            drawSprite(HOR_RES/2-s[0].width/2, VER_RES/2-(s[0].height*PIX_H-5), 0, 0);
//            drawSprite(HOR_RES/2, VER_RES/2-(s[0].height*PIX_H-5), 0, 0);
//            drawSprite(HOR_RES/2-s[0].width/2, VER_RES/2-5, 0, 0);
//            drawSprite(HOR_RES/2, VER_RES/2, 0, 0);



            drawGround(frames);
//            drawWarp(frames);

            // Draw a pixel:
            rcc_color(0); // delete last pixel position
            rcc_draw(xOld, yOld, w, h);
            rcc_color(color); // draw new position
            rcc_draw(x, y, w, h);
//            fast_pixel(x,y);


            drawSprite((HOR_RES-24)-s[0].width/2, (VER_RES-120)-((s[0].height*PIX_H)/2), 0+!aa, 0);
            if ( frames%4 == 0) {
                aa = !aa;
            }

            // Draw the beautiful font we cobbled together
//            sprintf(buf, "ABCDEFGHIJKLMNOP");
//            chr_print(buf, 0, 0); // x, y are bounded in chr_print
//
//            sprintf(buf, "abcdefghijklmnop"); // klmnopqrstuvwxyz
//            chr_print(buf, 0, 21); // x, y are bounded in chr_print
//
//            sprintf(buf, "QRSTUVWXYZ");
//            chr_print(buf, 0, 21*2); // x, y are bounded in chr_print
//
//            sprintf(buf, "qrstuvwxyz");
//            chr_print(buf, 0, 21*3); // x, y are bounded in chr_print
//
//            sprintf(buf, "Now I can say things");
//            chr_print(buf, 0, 21*6); // x, y are bounded in chr_print
//            sprintf(buf, "like:");
//            chr_print(buf, 0, 21*7); // x, y are bounded in chr_print
//            sprintf(buf, "\"Kayla!");
//            chr_print(buf, 4, 21*9); // x, y are bounded in chr_print
//            sprintf(buf, "I really love you!\"");
//            chr_print(buf, 8, 21*10); // x, y are bounded in chr_print
//
//
//            sprintf(buf, "frames: %i", frames);
//            chr_print(buf, 0, VER_RES-(21*2)); // x, y are bounded in chr_print

            rcc_color(0);
            rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); /* Weird things occur if the right column isn't 0 */\



#ifdef	DOUBLE_BUFFERED
            waitForBufferFlip();
#else
            waitForVSync();
#endif
//            __delay_ms(10);
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

        jamis();
	return 0;
}
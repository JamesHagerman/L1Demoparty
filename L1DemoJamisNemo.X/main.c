
// Layerone Demoscene Board - C Example Code
// Built on MPLABX using X16 compiler (MPLAB IDE compatible)
//
// Demo written by: Datagram and Hotdogs
// Fucked with by: jamisnemo
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
#include "particles.h"
//#include "screens.h"
//#include "testgfx.h"
//#include "serial.h"
#include "helpers.h"
#include "text.h"


_CONFIG1(FWDTEN_OFF & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2(POSCMOD_HS & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2)
_CONFIG3(ALTPMP_ALTPMPEN & SOSCSEL_EC)

// TODO this shit is dirty
//void omar(void);
//__prog__ uint8_t *pSnoop1 = SnoopOne;
//__prog__ uint8_t *pSnoop2 = SnoopTwo;
//__prog__ uint8_t *pSnoop3 = SnoopThree;
//__prog__ uint8_t *pSnoop4 = SnoopFour;
//__prog__ uint8_t *pSnoop5 = SnoopFive;
//__prog__ uint8_t *pSnoop6 = SnoopSix;


char message[20];
uint8_t lol=0;




uint16_t frames = 0;

void jamis() {
            // Grabbed from bldewolfs repo:
        blank_background();
	while(!_CMDMPT) continue; // Wait for GPU to finish drawing
//	ipu_decomp(gfx_compressed, GFXDisplayBuffer, GFX_BUFFER_SIZE);
//	while(!_CMDMPT) continue; // Wait for GPU to finish drawing

        char buf[20];
//	chr_print("Hello\nHello\nHello\nHello\n", 0, 0);
//	sprintf(buf, "%x\n", G1IPU);
//	chr_print(buf, 20, 0);
//	rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); /* Weird things occur if the right column isn't 0 */

        int x = 0;
        int y = 0;
        int xDir = 1;
        int yDir = 1;
        int w = 1;
        int h = 1*PIX_H;
        int xSpeed = 1;
        int ySpeed = 1*PIX_H;
        int xMin = 1;
        int yMin = 1*PIX_H;
        int xMax = ((int)HOR_RES)-w-1-1; //((int)HOR_RES)-8;
        int yMax = ((int)VER_RES)-h-(PIX_H); //((int)VER_RES)-6-1;
        int xOld, yOld;

        uint16_t color = 0;
        uint8_t r, g, b, hue, sat = 255, val = 255;
        while (1) {
            frames += 1;

//            if (frames > 90) {
//                frames = 80;
//            }

//            color =  frames;
//            color = get8bppRGBColor(0,0,frames);
//            color = get16bppRGBColor(frames,0,0);

            hsvtorgb(&r,&g,&b,frames,sat,val);
            color = get8bppRGBColor(r,g,b);
//            color = get16bppRGBColor(r,g,b);

//            blank_background();
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
//            rcc_color(c++);
//            rcc_draw(100, 20, 20, 200);
//            rcc_draw(0, 0, HOR_RES, VER_RES);
//            rcc_draw(638, 0, 1, 200);
//            sprintf(buf, "%i, %i %i, %i", x, y, xDir, yDir);
//            chr_print(buf, ((int)HOR_RES)/2, ((int)VER_RES)/2);

            // Draw debug:
//            sprintf(buf, "Low: %lx", (unsigned long)GFXDisplayBuffer & 0xFFFFFF ); //((unsigned long)(GFXDisplayBuffer) & 0xFFFF)
//            chr_print(buf, ((int)HOR_RES)/2, ((int)VER_RES)/2);
//
//            sprintf(buf, "High: %lu", (unsigned long)GFXDisplayBuffer >> 16 & 0xFF );
//            chr_print(buf, ((int)HOR_RES)/2, 8+((int)VER_RES)/2);

//            sprintf(buf, "rgb:%x, %x, %x", r, g, b );
//            chr_print(buf, 0, ((int)VER_RES)/2);
//
//            sprintf(buf, "color: %x", frames );
//            chr_print(buf, 0, 8+((int)VER_RES)/2);


//            uint16_t mapped = map(frames, 0, 10, 0, 100);
//            sprintf(buf, "%i->%i", frames, mapped );
//            chr_print(buf, 0, 8+((int)VER_RES)/2);


            // Draw a ball (actually, just a letter)
//            sprintf(buf, "O");
//            chr_print(buf, x, y); // x, y are bounded in chr_print

            // Draw a pixel:
//            rcc_color(0); // delete last pixel position
//            rcc_draw(xOld, yOld, w, h);
            rcc_color(color); // draw new position
            rcc_draw(x, y, w, h);

            // Draw the beautiful font we cobbled together
            sprintf(buf, "ABCDEFGHIJKLMNOP");
            chr_print(buf, 0, 0); // x, y are bounded in chr_print

            sprintf(buf, "abcdefghijklmnop"); // klmnopqrstuvwxyz
            chr_print(buf, 0, 21); // x, y are bounded in chr_print

            sprintf(buf, "QRSTUVWXYZ");
            chr_print(buf, 0, 21*2); // x, y are bounded in chr_print

            sprintf(buf, "qrstuvwxyz");
            chr_print(buf, 0, 21*3); // x, y are bounded in chr_print

            

            rcc_color(0);
            rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); /* Weird things occur if the right column isn't 0 */
//            __delay_ms(5);

	}
}

//void original() {
//    //=================
//    // ORIGINAL:
//    // clear buffers
//    rcc_setdest(GFXDisplayBuffer[0]);
//    blank_background();
//    rcc_setdest(GFXDisplayBuffer[1]);
//    blank_background();
//
//    _VMRGNIF = 0;
//    _HMRGNIF = 0;
//    _HMRGNIE = 1;
//    _VMRGNIE = 1;
//    _GFX1IE = 1;
//
//    //loadSprite(0);
//    loadAllSprites();
//
//    int d;
//    for(d = 0; d < MAX_PARTICLES; d++)
//            addParticle();
//
//
//    double fire_x, fire_y;
//    uint16_t balls=0;
//    signed int max_fire=0;
//    uint16_t fire_s = 10;
//    float fire_b = 1.0;
//    // y = offset + A*sin(x*2*pi*B)
//
//    float amp = 0.5;
//    float amp_s = 0.05;
//    uint16_t angle=0;
//
//    uint8_t aa = 1;
//    int next_fb = 1;
//    int box_color = 0;
//    while (1) {
//
//        printf("derp\n\r");
//        __delay_ms(1000);
//            rcc_setdest(GFXDisplayBuffer[next_fb]);
//
//            blank_background();
//            //omar();
//
//            int c;
//            for(c = 0; c < numPart; c++)
//            {
//                    if (p[c].posx + p[c].size >= HOR_RES-1) {
//                            p[c].posx = rand()%5;
//                            p[c].posy = 1+(rand()%(VER_RES-6));
//                            p[c].color = rand() & 0xff;
//                    }
//                    p[c].posx += p[c].speedx;
//            }
//            for(c = 0; c < numPart; c++)
//            {
//                    rcc_color(p[c].color);
//                    fast_pixel(p[c].posx, p[c].posy);
//            }
//
//
//            drawSprite(HOR_RES/2-s[6].width/2, VER_RES/2-(s[6].height*PIX_H), 6,0);
//            drawSprite(HOR_RES/2-s[7].width/2, VER_RES/2, 7,0);
//
//            drawSprite(HOR_RES/2-s[7].width/2 - s[2].width - 1, VER_RES/2 + PIX_H*(s[2].width/2), 2+aa, 0);
//            drawSprite(HOR_RES/2+s[7].width/2 + 2, VER_RES/2 + PIX_H*(s[3].width/2), 2+!aa, 0);
//            if ( frames%4 == 0) {
//                    aa = !aa;
//            }
//
//            rcc_color(0);
//
//            /*if (frames < 200) {
//                omar();
//                //TODO: text fix
//                rcc_color(0x92);
//                rcc_draw(0, 210, 24, 42);
//            } else if (frames >= 200 && frames < 400) {
//                verBlind();
//            } else if (frames >= 400) {
//                drawSprite( 10, 60, 4, 0); // TROGDOOOOOR
//            }*/
//
////		rcc_color(0x3);
////		render(angle, 360-angle, 0);
////		angle+=5;
//
//            // My drawing:
//            int myColor = 0;
//            int h = 0;
//            for (h = 0; h < HOR_RES; h++ ) {
//                myColor = h;
//
//                rcc_color(myColor); // 8bit yellow == 0b111 111 00 = 0xFC
//                fast_pixel(h, 5);
//
//                myColor = h*2;
//                rcc_color(myColor); // 8bit yellow == 0b111 111 00
//                fast_pixel(5, h);
//
//            }
//
//
//
//            // CIRCLE DRAWING
//            int x, y;
//            int ox,oy, radius;
//            radius = 3;
//            ox = HOR_RES/2;
//            oy = VER_RES/2;
//            for(y=-radius; y<=radius; y++) {
//                for(x=-radius; x<=radius; x++) {
//                    rcc_color(1+(rand()%3));
//                    if(x*x+y*y <= radius*radius + radius*0.8f) fast_pixel(ox+x, oy+y*PIX_H);
//                }
//            }
//
//
//            drawBorder(0x92);
//            cleanup();
//
//            while(!_CMDMPT) continue; // Wait for GPU to finish drawing
//            gpu_setfb(GFXDisplayBuffer[next_fb]);
//            _VMRGNIF = 0;
//            while(!_VMRGNIF) continue; // wait for vsync
//            next_fb = !next_fb;
//            frames++;
//    }
//}

int main(void) {

	ANSB = 0x0000;
	ANSC = 0x0000;
	ANSD = 0x0000;
	ANSF = 0x0000;
	ANSG = 0x0000;
	TRISB = 0x0000;

	config_graphics();
	config_chr();
	config_timer();

        jamis();

//        original();
        
	return 0;
}

//__prog__ uint8_t *pIndeed = OhIndeed;

//void omar(void) {
//	uint16_t width, height, w, h;
//	width = 80;
//	height = 80;
//	uint8_t col;
//	uint8_t off;
//	off = lol%6;
//
//	for (h=0; h < height; h++) {
//		for (w=0; w < width; w++) {
//			if (off == 0) {
//				col = pSnoop1[w + h*width];
//			} else if (off == 1) {
//				col = pSnoop2[w + h*width];
//			} else if (off == 2) {
//				col = pSnoop3[w + h*width];
//			} else if (off == 3) {
//				col = pSnoop4[w + h*width];
//			} else if (off == 4){
//				col = pSnoop5[w + h*width];
//			} else if (off == 5){
//				col = pSnoop6[w + h*width];
//			}
//			rcc_color(col);
//			rcc_draw(w,h*6,1,6);
//
//		}
//	}
//	lol++;
//}

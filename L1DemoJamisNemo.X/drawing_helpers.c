#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <math.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "drawing_helpers.h"

#include "color_management.h"
#include "resolution_management.h"

//float angle, x[8], y[8], z[8], rx[8], ry[8], rz[8], scrx[8], scry[8];

// math helpers:
float radians(uint16_t angle) {
	return ((angle*3.14159)/180.0);
}

int realtoint(float oldval, float oldmin, float oldmax, float newmin, float newmax) {
	return (int)((((oldval - oldmin) * (newmax - newmin)) / (oldmax - oldmin)) + newmin);
}


void rcc_color(unsigned int color) {
    while(_CMDFUL) continue;
	G1CMDL = color;
	G1CMDH = RCC_COLOR;
//        Nop();
}

void rcc_setdest(__eds__ uint8_t *buf) {
	while(!_CMDMPT) continue; // Wait for GPU to finish drawing
    G1W1ADRL = (unsigned long)(buf);
	G1W1ADRH = (unsigned long)(buf);
	G1W2ADRL = (unsigned long)(buf);
	G1W2ADRH = (unsigned long)(buf);

//        G1DPADRL = (unsigned long)(buf) & 0xFFFF;
//	G1DPADRH = (unsigned long)(buf) >>16 & 0xFF;
//	G1W1ADRL = (unsigned long)(buf) & 0xFFFF;
//	G1W1ADRH = (unsigned long)(buf) >>16 & 0xFF;
//	G1W2ADRL = (unsigned long)(buf) & 0xFFFF;;
//	G1W2ADRH = (unsigned long)(buf) >>16 & 0xFF;
}

void rcc_draw(uint16_t x, uint16_t y, uint16_t w, uint16_t h) {

	// destination
	while(_CMDFUL) continue;
	G1CMDL = x + y*HOR_RES;
	G1CMDH = RCC_DESTADDR | (x + y*HOR_RES)>>16;
//	Nop();

	// size
	while(_CMDFUL) continue;
	G1CMDL = (w<<12) | h;
	G1CMDH = RCC_RECTSIZE | (w>>4);
//	Nop();

	// go!
	while(_CMDFUL) continue;
	G1CMDL = 0xC<<3;
	G1CMDH = RCC_STARTCOPY;
//	Nop();
}

void rcc_w1tow2(__eds__ uint8_t *dest, __eds__ uint8_t *src) {
    // Does not work...
    // Src
    while(_CMDFUL) continue;
    G1CMDL = (unsigned long)(src);
    G1CMDH = RCC_SRCADDR ;// | (G1W1ADRH>>4); // not sure what the high range is
//    Nop();

    // dest
    while(_CMDFUL) continue;
    G1CMDL = (unsigned long)(dest);
    G1CMDH = RCC_DESTADDR;// | G1W2ADRH;
//    Nop();

    // select the WHOLE buffer
    while(_CMDFUL) continue;
    G1CMDL = (((int)HOR_RES-1)<<12) | (int)VER_RES;
    G1CMDH = RCC_RECTSIZE | (((int)HOR_RES-1)>>8);
//    Nop();

    // copy!
    while(_CMDFUL) continue;
    G1CMDL = 0xe0; //0xC<<3;
    G1CMDH = RCC_STARTCOPY;
//    Nop();

}



void line(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1) {
    uint16_t sizeW = 1;
    uint16_t sizeH = 1*PIX_H;
 
    int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
    int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1; 
    int err = (dx>dy ? dx : -dy)/2, e2;

    for(;;){
//        setPixel(x0,y0);
        rcc_draw(x0, y0, sizeW, sizeH);
        if (x0==x1 && y0==y1) break;
        e2 = err;
        if (e2 >-dx) { err -= dy; x0 += sx; }
        if (e2 < dy) { err += dx; y0 += sy; }
    }

}

void lineFloat(float x1, float y1, float x2, float y2) {
    //TODO: WHAT THE HELL ARE YOU DOING WITH FLOATS!?!?!?
    unsigned int i;
    uint16_t sizeW = 1;
    uint16_t sizeH = 2*PIX_H;
    double hl=fabs(x2-x1), vl=fabs(y2-y1), length=(hl>vl)?hl:vl;
    float deltax=(x2-x1)/(float)length, deltay=(y2-y1)/(float)length;
    for (i=0; i<(int)length; i++) {
        unsigned long x=(int)(x1+=deltax), y=(int)(y1+=deltay);
        if ((x<HOR_RES)&&(y<VER_RES)) {
            //rcc_color(rand());
//            rcc_color(0x3);
            rcc_draw(x, y, sizeW, sizeH);
//            rcc_draw(x,y, PIX_W,PIX_H);
            // TODO: fix y displacement
//            fast_pixel(x,y+6);// + i*PIX_H);
        }
    }
}


void blank_background() {
    while(_CMDFUL) continue;
    rcc_color(0);
    rcc_draw(0, 0, HOR_RES-1, VER_RES); // fixes weird last horizontal line issue
}

void cleanup(void) {
	// Clean right column
	//rcc_color(0xe0); // neat effect
	//rcc_color(0xff); // white
	rcc_color(0x00);
	rcc_draw(HOR_RES-1,0, 1,VER_RES);
}

void drawBorder(uint16_t c) {
	// screen border
	rcc_color(c);
	rcc_draw(0,0, 1, VER_RES); // left
	rcc_draw(HOR_RES-2,0,1,VER_RES); // right
	rcc_draw(0,0, HOR_RES-2, PIX_H); // top
	rcc_draw(0,VER_RES-PIX_H,HOR_RES-2,PIX_H); // bottom
}


void verBlind(void) {
	// VERTICAL BLINDS
	// blind = rate of drop
	static uint16_t blind=0;
	rcc_color(0);
	rcc_draw(0, 0, HOR_RES-1, blind);
	rcc_draw(0, VER_RES-blind, HOR_RES-1, blind);
	if ( blind < 100) {
		blind+=2;
	}
}


//void render (float xa, float ya, float za) {
//        int i;
//        float mat[4][4];            // Determine rotation matrix
//        float xdeg=xa*3.1416f/180, ydeg=ya*3.1416f/180, zdeg=za*3.1416f/180;
//        float sx=(float)sin(xdeg), sy=(float)sin(ydeg), sz=(float)sin(zdeg);
//        float cx=(float)cos(xdeg), cy=(float)cos(ydeg), cz=(float)cos(zdeg);
//        mat[0][0]=cx*cz+sx*sy*sz, mat[1][0]=-cx*sz+cz*sx*sy, mat[2][0]=cy*sx;
//        mat[0][1]=cy*sz, mat[1][1]=cy*cz, mat[2][1]=-sy;
//        mat[0][2]=-cz*sx+cx*sy*sz, mat[1][2]=sx*sz+cx*cz*sy, mat[2][2]=cx*cy;
//        for (i=0; i<8; i++) {
//                rx[i]=x[i]*mat[0][0]+y[i]*mat[1][0]+z[i]*mat[2][0];
//                ry[i]=x[i]*mat[0][1]+y[i]*mat[1][1]+z[i]*mat[2][1];
//                rz[i]=x[i]*mat[0][2]+y[i]*mat[1][2]+z[i]*mat[2][2]+100;
//                scrx[i]=(rx[i]*10)/rz[i]+(HOR_RES/2), scry[i]=(ry[i]*60)/rz[i]+(VER_RES/2);
//        }
//        for (i=0; i<4; i++) {
//                line (scrx[i], scry[i], scrx[i+4], scry[i+4]);
//                line (scrx[i], scry[i], scrx[(i+1)%4], scry[(i+1)%4]);
//                line (scrx[i+4], scry[i+4], scrx[((i+1)%4)+4], scry[((i+1)%4)+4]);
//        }
//}
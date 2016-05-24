
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "color_management.h"
#include "resolution_management.h"
#include "helpers.h"

#ifndef SPRITES_H
#define	SPRITES_H

#ifdef	__cplusplus
extern "C" {
#endif

#define SPR_HEAD 5
#define SPR_OFF_WIDTH 0
#define SPR_OFF_HEIGHT 1
#define SPR_OFF_BITRES 2
#define SPR_OFF_TRANS 3
#define SPR_OFF_ROTATE 4
#define SPR_OFF_DATA 5

// SPRITE DEFINITIONS

#define MAX_SPRITES 13

#define SPR_FIRE_16_A 0
#define SPR_FIRE_16_B 1
#define SPR_FIRE_8_A 2
#define SPR_FIRE_8_B 3

#define SPR_INT_LAYER 4
#define SPR_INT_ONE 5
#define SPR_INT_BORD_A 6
#define SPR_INT_BORD_B 7

struct Sprite {
	 uint8_t width;  // Width (in pixels)
	 uint8_t height; // Height (in pixels)
	 uint8_t bitres; // Bits per Pixel
 	 uint8_t trans;  // Transparency
 	 uint8_t rotate; // Rotation, 0: none, 1: 90 cw, 2: 180, 3: 90 ccw
__prog__ uint8_t *data;  // Pointer to sprite pixel data
};
extern struct Sprite s[MAX_SPRITES];

void ipu_decomp(__eds__ uint8_t *src, __eds__ uint8_t *dst, unsigned long size);
void loadAllSprites(void);
void drawSpriteRotation(uint16_t x, uint16_t y, uint8_t id, float rotation);

extern __prog__ uint8_t SpriteMap[] __attribute__((space(prog)));

//=========
// Static inline functions:
void static inline drawSprite(uint16_t x, uint16_t y, uint8_t id, uint8_t rotation) {

	unsigned int w,h;
	uint16_t x1,y1;
	uint8_t color;

	if (x >= HOR_RES-1 || y >= VER_RES-1 || x < 0|| y < 0) return;

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



#ifdef	__cplusplus
}
#endif

#endif	/* SPRITES_H */


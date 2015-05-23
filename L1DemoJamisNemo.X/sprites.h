
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



#ifdef	__cplusplus
}
#endif

#endif	/* SPRITES_H */


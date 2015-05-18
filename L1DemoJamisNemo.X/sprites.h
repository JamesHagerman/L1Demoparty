
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

#define MAX_SPRITES 8

#define SPR_FIRE_16_A 0
#define SPR_FIRE_16_B 1
#define SPR_FIRE_8_A 2
#define SPR_FIRE_8_B 3

#define SPR_INT_LAYER 4
#define SPR_INT_ONE 5
#define SPR_INT_BORD_A 6
#define SPR_INT_BORD_B 7

struct Sprite;

void ipu_decomp(__eds__ uint8_t *src, __eds__ uint8_t *dst, unsigned long size);
void loadAllSprites(void);

extern __prog__ uint8_t SpriteMap[] __attribute__((space(prog)));


#ifdef	__cplusplus
}
#endif

#endif	/* SPRITES_H */
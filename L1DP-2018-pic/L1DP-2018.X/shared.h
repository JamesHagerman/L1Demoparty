/* 
 * File:   shared.h
 * Author: jamis
 *
 * Created on May 25, 2017, 2:31 AM
 */

#include <stdint.h>

#ifndef SHARED_H
#define	SHARED_H

#ifdef	__cplusplus
extern "C" {
#endif

extern char titleText[];
extern char authorText[];
extern char textBuffer[20];

extern int currentSpriteIndex;
extern int currentSpriteOffset;

extern uint8_t clutStart;
extern uint8_t color;
extern uint8_t colorScrollSpeed;
extern uint16_t i, j, sizeW, sizeH, vertOffset;
extern uint16_t screenCenterY;
extern uint8_t newValue;


#ifdef	__cplusplus
}
#endif

#endif	/* SHARED_H */


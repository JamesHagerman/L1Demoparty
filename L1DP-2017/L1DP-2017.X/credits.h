/* 
 * File:   credits.h
 * Author: jamis
 *
 * Created on May 6, 2017, 11:54 AM
 */

#include "demo_management.h"

#ifndef CREDITS_H
#define	CREDITS_H

#ifdef	__cplusplus
extern "C" {
#endif

extern SCENE creditsScene;
static char creditsText[];
    
void initCredits();
void drawCredits(uint16_t frame);
void inputCredits(uint8_t inputData);
unsigned char audioCredits(unsigned char t);

#ifdef	__cplusplus
}
#endif

#endif	/* CREDITS_H */


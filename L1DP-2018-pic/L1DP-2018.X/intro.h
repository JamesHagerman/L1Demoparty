/* 
 * File:   intro.h
 * Author: jamis
 *
 * Created on May 6, 2017, 12:10 PM
 */

#include "demo_management.h"

#ifndef INTRO_H
#define	INTRO_H

#ifdef	__cplusplus
extern "C" {
#endif

extern SCENE introScene;

void initIntro();
void drawIntro(uint16_t frame);
void inputStringIntro(unsigned char *inputBuffer, uint16_t inputSize);
void inputIntro(EVENT_TYPE inputData);
unsigned char audioIntro(unsigned char t);

#ifdef	__cplusplus
}
#endif

#endif	/* INTRO_H */


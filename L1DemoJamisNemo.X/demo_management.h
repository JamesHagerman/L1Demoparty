/* 
 * File:   demo_management.h
 * Author: jamis
 *
 * Created on May 25, 2016, 1:18 AM
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <math.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "serial.h"
#include "text.h"
#include "music.h"
#include "sprites.h"
#include "drawing_helpers.h"
#include "color_management.h"
#include "resolution_management.h"
#include "fb_control.h"

#ifndef DEMO_MANAGEMENT_H
#define	DEMO_MANAGEMENT_H

#ifdef	__cplusplus
extern "C" {
#endif

extern uint16_t frames;
extern bool ledState;

void setupHardware();
void frameStart();
void frameEnd();
void manageFrameReset();
void drawFPS();
void statusLED();



#ifdef	__cplusplus
}
#endif

#endif	/* DEMO_MANAGEMENT_H */


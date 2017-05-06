/* 
 * File:   road.h
 * Author: jamis
 *
 * Created on May 6, 2017, 12:15 PM
 */

#include "demo_management.h"

#ifndef ROAD_H
#define	ROAD_H

#ifdef	__cplusplus
extern "C" {
#endif

extern SCENE roadScene;

void initRoad();
void drawRoad(uint16_t frame);
unsigned char audioRoad(unsigned char t);

#ifdef	__cplusplus
}
#endif

#endif	/* ROAD_H */


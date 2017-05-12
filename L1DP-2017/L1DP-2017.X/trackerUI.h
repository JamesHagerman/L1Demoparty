/* 
 * File:   trackerUI.h
 * Author: jamis
 *
 * Created on May 12, 2017, 12:17 AM
 */

#ifndef TRACKERUI_H
#define	TRACKERUI_H

#ifdef	__cplusplus
extern "C" {
#endif

extern SCENE trackerScene;

void initTracker();
void drawTracker(uint16_t frame);
unsigned char audioTracker(unsigned char t);


#ifdef	__cplusplus
}
#endif

#endif	/* TRACKERUI_H */


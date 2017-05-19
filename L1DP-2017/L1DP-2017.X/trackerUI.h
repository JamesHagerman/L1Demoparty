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
void handleNoteInput(EVENT_TYPE inputData);
void handleParameterChanges(EVENT_TYPE inputData);


void drawTracker(uint16_t frame);
void inputStringTracker(unsigned char *inputBuffer, uint16_t inputSize);
void inputTracker(EVENT_TYPE inputData);
unsigned char audioTracker(unsigned char t);


#ifdef	__cplusplus
}
#endif

#endif	/* TRACKERUI_H */


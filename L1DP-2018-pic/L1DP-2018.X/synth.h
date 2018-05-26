/*
 * File:   synth.h
 * Author: jamis
 *
 * Created on May 24, 2018, 2:33 PM
 */

#ifndef SYNTH_H
#define	SYNTH_H

#ifdef	__cplusplus
extern "C" {
#endif

extern SCENE synthScene;

void printUsage();
void handleNoteInput(EVENT_TYPE inputData);
void handleParameterChanges(EVENT_TYPE inputData);

#ifdef	__cplusplus
}
#endif

#endif	/* SYNTH_H */


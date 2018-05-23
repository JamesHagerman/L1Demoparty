/* 
 * File:   hardware.h
 * Author: jamis
 *
 * Created on May 12, 2017, 1:18 AM
 */

#ifndef HARDWARE_H
#define	HARDWARE_H

#ifdef	__cplusplus
extern "C" {
#endif
    
extern bool ledState;
extern char jumperMessage[];

extern bool forceTrackerScene;

void checkForPauseJumper();
void checkForTrackerJumper();
void setupHardware();
//void statusLED();

#ifdef	__cplusplus
}
#endif

#endif	/* HARDWARE_H */


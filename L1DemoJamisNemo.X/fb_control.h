/* 
 * File:   fb_control.h
 * Author: jamis
 *
 * Created on May 17, 2015, 9:32 PM
 */

#ifndef FB_CONTROL_H
#define	FB_CONTROL_H

#ifdef	__cplusplus
extern "C" {
#endif

extern volatile int fb_ready;
extern volatile int vSync;

void gpu_setfb(__eds__ uint8_t *buf);
//void __attribute__((interrupt, auto_psv))_GFX1Interrupt(void);


#ifdef	__cplusplus
}
#endif

#endif	/* FB_CONTROL_H */


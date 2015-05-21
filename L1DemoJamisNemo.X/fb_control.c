#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
//#include <float.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "color_management.h"
#include "resolution_management.h"

#include "fb_control.h"
#include "helpers.h"


volatile int fb_ready = 0;
volatile int vSync = 0;

void gpu_setfb(__eds__ uint8_t *buf) {
//	G1DPADRL = (unsigned long)(buf) & 0xFFFF;
//	G1DPADRH = (unsigned long)(buf) >>16 & 0xFF;
//	G1W1ADRL = (unsigned long)(buf) & 0xFFFF;;
//	G1W1ADRH = (unsigned long)(buf) >>16 & 0xFF;
    G1W2ADRL = (unsigned long)(buf);
    G1W2ADRH = (unsigned long)(buf);
    G1DPADRL = (unsigned long)(buf);
    G1DPADRH = (unsigned long)(buf);
}

#ifdef DOUBLE_BUFFERED
void __attribute__((interrupt, auto_psv))_GFX1Interrupt(void) {
	static int lines = 0;
	static int syncs = 0;
	static int next_fb = 1;
	if(_VMRGNIF) { /* on a vertical sync, flip buffers if it's ready */
		lines = 0;
		syncs++;
		if(fb_ready) {
			gpu_setfb(GFXDisplayBuffer[next_fb]);
			next_fb = !next_fb;
		}
		//Nop();Nop();
		fb_ready = 0;
		_VMRGNIF = 0;
	} else if(_HMRGNIF) { /* on each horizontal sync, ...? */
		lines++;
		_HMRGNIF = 0;
	}
	_GFX1IF = 0;
}
#else
void __attribute__((interrupt, auto_psv))_GFX1Interrupt(void) {
    // Wait until the vertical sync
    if(_VMRGNIF) {
        vSync = 0;
        _VMRGNIF = 0;
    }
    _GFX1IF = 0;
}
#endif
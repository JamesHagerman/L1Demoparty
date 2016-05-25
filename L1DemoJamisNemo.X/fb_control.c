#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "color_management.h"
#include "resolution_management.h"

#include "fb_control.h"
#include "drawing_helpers.h"


volatile int fb_ready = 0;
volatile int vSync = 0;

void gpu_setfb(__eds__ uint8_t *buf) {
    G1W2ADRL = (unsigned long)(buf);
    G1W2ADRH = (unsigned long)(buf);
    G1DPADRL = (unsigned long)(buf);
    G1DPADRH = (unsigned long)(buf);
}

#ifdef DOUBLE_BUFFERED
int next_fb = 0;
void waitForBufferFlip() {
//    while(!_CMDMPT) continue; // Wait for GPU to finish drawing
    while((!_CMDMPT) | _IPUBUSY | _RCCBUSY | _CHRBUSY) continue; // Wait for IPU, RCC, and CHR GPUs to finish drawing
    fb_ready = 1;
    while(fb_ready) continue; // wait for vsync
}

void swapWorkAreas() {
    rcc_setdest(GFXDisplayBuffer[next_fb]);
    next_fb = !next_fb;
    blank_background();
}
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
void waitForVSync() {
//    while(!_CMDMPT) continue; // Wait for GPU to finish drawing
    while((!_CMDMPT) | _IPUBUSY | _RCCBUSY | _CHRBUSY) continue; // Wait for IPU, RCC, and CHR GPUs to finish drawing
    vSync = 1;
    while(vSync) continue; // wait for vsync
}
void __attribute__((interrupt, auto_psv))_GFX1Interrupt(void) {
    // Wait until the vertical sync
    if(_VMRGNIF) {
        vSync = 0;
        _VMRGNIF = 0;
    }
    _GFX1IF = 0;
}
#endif
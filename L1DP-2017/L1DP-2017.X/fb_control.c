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

// volatile means "this may change outside of the scope"
// This tells the compiler to NOT make infinite loops, a la,
// while(fb_ready){}
// This is useful for when interrupts will change the variable at
// some point later on.
volatile int fb_ready = 0;
volatile int vSync = 0;

void gpu_setfb(__eds__ uint8_t *buf) {
    // TEST THIS SHIT to fix the black and white weirdness. also maybe Display Data Stagge
    
//    VALIDATE THAT THE WORK AREAS CAN BE DEFINED SEPARATE FROM THE GRAPHICS BUFFER!!
    
//    G1W1ADRL = (unsigned long)(buf);
//    G1W1ADRH = (unsigned long)(buf);
    
    G1W2ADRL = (unsigned long)(buf);
    G1W2ADRH = (unsigned long)(buf);
    G1DPADRL = (unsigned long)(buf);
    G1DPADRH = (unsigned long)(buf);
}

void frameStart() {
#ifdef	DOUBLE_BUFFERED
    swapWorkAreas();
#else
//    blank_background(); // Clearing the buffer here means tearing for some reason
#endif
}

void frameEnd() {
    // Cleanup the right most column:
    rcc_color(0);
    rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); // Weird things occur if the right column isn't 0

#ifdef	DOUBLE_BUFFERED
    waitForBufferFlip();
#else
    waitForVSync();
#endif
}

#ifdef DOUBLE_BUFFERED
int next_fb = 0;
void waitForBufferFlip() {
    // Wait for GPUs to all finish drawing
    while((!_CMDMPT) | _RCCIF | _CHRIF | _IPUIF) continue; // Wait for IPU, RCC, and CHR GPUs to finish drawing
    fb_ready = 1;
    while(fb_ready) continue; // wait for vsync interrupt
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
            fb_ready = 0;
		}
		_VMRGNIF = 0;
	} else if(_HMRGNIF) { /* on each horizontal sync, ...? */
		lines++;
		_HMRGNIF = 0;
	}
	_GFX1IF = 0; // clear the master GFX interrupt flag
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
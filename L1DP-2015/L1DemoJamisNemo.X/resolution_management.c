/*
 * File:   resolution_management.c
 * Author: jamis
 *
 * Created on May 17, 2015, 1:12 PM
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
//#include <float.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"

uint8_t PIX_H = VER_RES/HOR_RES;

#ifdef	DOUBLE_BUFFERED
__eds__ uint8_t GFXDisplayBuffer[2][GFX_BUFFER_SIZE] __attribute__((eds, section("DISPLAY") ));
#else
__eds__ uint8_t GFXDisplayBuffer[GFX_BUFFER_SIZE] __attribute__((eds, section("DISPLAY") ));
#endif

void config_graphics(void) {
	_G1CLKSEL = 1;
	_GCLKDIV = CLOCKDIV;

        // This SHOULD work... but because the memory address is somehow fucked, it's not.
        // Compiler says 0xf200, chip says 0x1f200. Compiler is right. (somehow)
        // So, we're just gonna ignore the high bits and move right the hell along.
        // Just double check that the address the compiler spits out is under 16 bits
        //
        // I don't know what the hell is going on here. Double buffering seems to need
        // the High bits defined? No idea...

#ifdef	DOUBLE_BUFFERED
        // Display buffer:
	G1DPADRL = (unsigned long)(GFXDisplayBuffer) & 0xFFFF;
	G1DPADRH = (unsigned long)(GFXDisplayBuffer) >>16 & 0xFF;

        // Work area 1
	G1W1ADRL = (unsigned long)(GFXDisplayBuffer) & 0xFFFF;
	G1W1ADRH = (unsigned long)(GFXDisplayBuffer) >>16 & 0xFF;

        // Work area 2
	G1W2ADRL = (unsigned long)(GFXDisplayBuffer) & 0xFFFF;
	G1W2ADRH = (unsigned long)(GFXDisplayBuffer) >>16 & 0xFF;
#else
        // Display buffer:
	G1DPADRL = (unsigned long)(GFXDisplayBuffer) & 0xFFFF;
//	G1DPADRH = (unsigned long)(GFXDisplayBuffer) >>16 & 0xFF;

        // Work area 1
	G1W1ADRL = (unsigned long)(GFXDisplayBuffer) & 0xFFFF;
//	G1W1ADRH = (unsigned long)(GFXDisplayBuffer) >>16 & 0xFF;

        // Work area 2
	G1W2ADRL = (unsigned long)(GFXDisplayBuffer) & 0xFFFF;
//	G1W2ADRH = (unsigned long)(GFXDisplayBuffer) >>16 & 0xFF;
#endif
        

        G1PUW = HOR_RES;
        G1PUH = VER_RES;

	// Using PIC24F manual section 43 page 37-38
//        _DPTEST = 2; // Test mode: 2 = bars. 3 = borders...
	_DPMODE = 1;      /* TFT */
	_GDBEN = 0xFFFF;
	_DPW = _PUW = HOR_RES; // Work area and FB size so GPU works
	_DPH = _PUH = VER_RES;
	_DPWT = HOR_FRONT_PORCH + HOR_PULSE_WIDTH + HOR_BACK_PORCH + HOR_RES;

        // _DPHT may need to be adjusted for vertical centering
	_DPHT = (VER_FRONT_PORCH + VER_PULSE_WIDTH + VER_BACK_PORCH)*2 + VER_RES;
	_DPCLKPOL = 0;
	_DPENOE = 0;
	_DPENPOL = 0;
	_DPVSOE = 1;      /* use VSYNC */
	_DPHSOE = 1;      /* use HSYNC */
	_DPVSPOL = VSPOL;     /* VSYNC negative polarity (if VSPOL = 0)*/
	_DPHSPOL = HSPOL;     /* HSYNC negative polarity (if HSPOL = 0)*/

        // _ACTLINE may need to be adjusted for vertical centering
	_ACTLINE = _VENST = VER_FRONT_PORCH + VER_PULSE_WIDTH + VER_BACK_PORCH - VENST_FUDGE;
	_ACTPIX = _HENST = HOR_FRONT_PORCH + HOR_PULSE_WIDTH + HOR_BACK_PORCH - HENST_FUDGE;
	_VSST = VER_FRONT_PORCH;
	_HSST = HOR_FRONT_PORCH;
	_VSLEN = VER_PULSE_WIDTH;
	_HSLEN = HOR_PULSE_WIDTH;
	_DPPWROE = 0;
	_DPPINOE = 1;
	_DPPOWER = 1;

	int logc=0;
	while (BPP>>logc > 1) { logc++; }
	_DPBPP = _PUBPP = logc;

	_G1EN = 1;
	__delay_ms(1);
}
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "music.h"

#include "color_management.h"
#include "resolution_management.h"
#include "demo_management.h"

/* In-A-Gadda-Da-Vida Tab
D[--------3-2-------\7-6-5------[
A[---5-5-------3-5----------3---[
*/
// OLD SONG BULLSHIT
//unsigned short song[] = {
//	NOTES_D5,
//	0,
//	NOTES_D5,
//	0,
//	NOTES_F5,
//	NOTES_E5,
//	NOTES_C5,
//	NOTES_D5,
//	0,
//	NOTES_A5,
//	0,
//	NOTES_Ab5,
//	0,
//	NOTES_G5,
//	0,
//	NOTES_C5,
//	};


const unsigned short song[] = {
	NOTES_Eb3,
    NOTES_C3,
    NOTES_Eb3,
    NOTES_C3,
    NOTES_F3,
    NOTES_C3,
    NOTES_F3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_Db3,
    NOTES_F3,

    NOTES_Eb3,
    NOTES_C3,
    NOTES_Eb3,
    NOTES_C3,
    NOTES_F3,
    NOTES_C3,
    NOTES_F3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_G3,
    NOTES_Ab3,

    NOTES_Eb3,
    NOTES_C3,
    NOTES_Eb3,
    NOTES_C3,
    NOTES_F3,
    NOTES_C3,
    NOTES_F3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_G3,
    NOTES_C3,
    NOTES_B3,
    NOTES_C4,

    NOTES_G3,
    NOTES_C3,
    NOTES_G2,
    NOTES_C2,
    NOTES_G3,
    NOTES_C3,
    NOTES_F2,
    NOTES_Ab2,
    NOTES_G3,
    NOTES_C3,
    NOTES_F3,
    NOTES_C3,
    NOTES_Eb2,
    NOTES_C2,
    NOTES_D3,
    NOTES_Eb2,

};


void config_timer() {
    // Setup the timer to step through the wavetable:
    PR1 = 0;
    _TCKPS = 0b00; // prescale. 0b00 = 1:1, 0b01 = 1:8,
    _T1IP = 5;	// set interrupt priority
    _TON  = 1;	// turn on the timer
    _T1IF = 0;	// reset interrupt flag
    _T1IE = 1;	// turn on the timer1 interrupt

    // Set up timer for stepping through song:
    PR2 = 0xf0; // slower: 0x3d09
    _T2IP = 6; // interrupt priority
    _T2IF = 0; // reset flag
    /* no nice macros for T2CON :( */
    T2CON = 0b1000000000110000; // set T2 on with max prescaler (256)
    _T2IE = 1; // enable the timer2 interrupt
}

// This is the interrupt for stepping through the wave table:
// _T1Interrupt() is the T1 interrupt service routine (ISR).
void __attribute__((__interrupt__)) _T1Interrupt(void);
void __attribute__((__interrupt__, auto_psv)) _T1Interrupt(void)
{
    static unsigned char idx = 0;
    if (story_state.currentScene == 0) {
    PORTB = ((zigzagtable[idx]/4)&0xf) << 8 | ((sinetable[idx]/4)&0xf) << 12;

//    } else if (story_state.currentScene == 1 ) {
//        PORTB = ((zigzagtable[idx]/4)&0xf) << 12 | ((sinetable[idx]/4)&0xf) << 8;
    } else {
    PORTB = (sinetable[idx]/4) << 8;
    }

    if (frames != 0) {
        idx -= 1;
    }
	_T1IF = 0;
}

// This interrupt is for stepping through the song:
// _T2Interrupt() is the T2 interrupt service routine (ISR).
void __attribute__((__interrupt__)) _T2Interrupt(void);
void __attribute__((__interrupt__, auto_psv)) _T2Interrupt(void)
{
    static unsigned short idx = 0;
    static uint8_t sineDump = 0;
    static uint8_t rampDump = 0;
//    PR1 = song[idx];

    PR1 = NOTES_C2 + sinetable[sineDump]/2 + sinetable[rampDump];
//    PR1 = c;

    idx++;
    sineDump+=4;
    rampDump++;
    if(idx == sizeof(song) / sizeof(song[0])) /* loop it! */
            idx = 0;
    _T2IF = 0;
}

const unsigned char sinetable[] = {
0x0,0x0,0x0,0x0,0x1,0x1,0x1,0x2,
0x2,0x3,0x4,0x5,0x5,0x6,0x7,0x9,
0xa,0xb,0xc,0xe,0xf,0x11,0x12,0x14,
0x15,0x17,0x19,0x1b,0x1d,0x1f,0x21,0x23,
0x25,0x28,0x2a,0x2c,0x2f,0x31,0x34,0x36,
0x39,0x3b,0x3e,0x41,0x43,0x46,0x49,0x4c,
0x4f,0x52,0x55,0x58,0x5a,0x5d,0x61,0x64,
0x67,0x6a,0x6d,0x70,0x73,0x76,0x79,0x7c,
0x80,0x83,0x86,0x89,0x8c,0x8f,0x92,0x95,
0x98,0x9b,0x9e,0xa2,0xa5,0xa7,0xaa,0xad,
0xb0,0xb3,0xb6,0xb9,0xbc,0xbe,0xc1,0xc4,
0xc6,0xc9,0xcb,0xce,0xd0,0xd3,0xd5,0xd7,
0xda,0xdc,0xde,0xe0,0xe2,0xe4,0xe6,0xe8,
0xea,0xeb,0xed,0xee,0xf0,0xf1,0xf3,0xf4,
0xf5,0xf6,0xf8,0xf9,0xfa,0xfa,0xfb,0xfc,
0xfd,0xfd,0xfe,0xfe,0xfe,0xff,0xff,0xff,
0xff,0xff,0xff,0xff,0xfe,0xfe,0xfe,0xfd,
0xfd,0xfc,0xfb,0xfa,0xfa,0xf9,0xf8,0xf6,
0xf5,0xf4,0xf3,0xf1,0xf0,0xee,0xed,0xeb,
0xea,0xe8,0xe6,0xe4,0xe2,0xe0,0xde,0xdc,
0xda,0xd7,0xd5,0xd3,0xd0,0xce,0xcb,0xc9,
0xc6,0xc4,0xc1,0xbe,0xbc,0xb9,0xb6,0xb3,
0xb0,0xad,0xaa,0xa7,0xa5,0xa2,0x9e,0x9b,
0x98,0x95,0x92,0x8f,0x8c,0x89,0x86,0x83,
0x80,0x7c,0x79,0x76,0x73,0x70,0x6d,0x6a,
0x67,0x64,0x61,0x5d,0x5a,0x58,0x55,0x52,
0x4f,0x4c,0x49,0x46,0x43,0x41,0x3e,0x3b,
0x39,0x36,0x34,0x31,0x2f,0x2c,0x2a,0x28,
0x25,0x23,0x21,0x1f,0x1d,0x1b,0x19,0x17,
0x15,0x14,0x12,0x11,0xf,0xe,0xc,0xb,
0xa,0x9,0x7,0x6,0x5,0x5,0x4,0x3,
0x2,0x2,0x1,0x1,0x1,0x0,0x0,0x0,
};


const unsigned char zigzagtable[] = {
0xff, 0xfe, 0xfd, 0xfc, 0xfb, 0xfa, 0xf9, 0xf8,
0xf7, 0xf6, 0xf5, 0xf4, 0xf3, 0xf2, 0xf1, 0xf0,
0xef, 0xee, 0xec, 0xeb, 0xea, 0xe9, 0xe8, 0xe7,
0xe6, 0xe5, 0xe4, 0xe3, 0xe2, 0xe1, 0xe0, 0xdf,
0xde, 0xdd, 0xdc, 0xdb, 0xda, 0xd9, 0xd8, 0xd7,
0xd6, 0xd5, 0xd4, 0xd3, 0xd2, 0xd1, 0xd0, 0xcf,
0xce, 0xcd, 0xcc, 0xcb, 0xca, 0xc9, 0xc7, 0xc6,
0xc5, 0xc4, 0xc3, 0xc2, 0xc1, 0xc0, 0xbf, 0xbe,
0xbd, 0xbc, 0xbb, 0xba, 0xb9, 0xb8, 0xb7, 0xb6,
0xb5, 0xb4, 0xb3, 0xb2, 0xb1, 0xb0, 0xaf, 0xae,
0xad, 0xac, 0xab, 0xaa, 0xa9, 0xa8, 0xa7, 0xa6,
0xa5, 0xa3, 0xa2, 0xa1, 0xa0, 0x9f, 0x9e, 0x9d,
0x9c, 0x9b, 0x9a, 0x99, 0x98, 0x97, 0x96, 0x95,
0x94, 0x93, 0x92, 0x91, 0x90, 0x8f, 0x8e, 0x8d,
0x8c, 0x8b, 0x8a, 0x89, 0x88, 0x87, 0x86, 0x85,
0x84, 0x83, 0x82, 0x81, 0x7f, 0x2, 0x3, 0x4,
0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc,
0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14,
0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c,
0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24,
0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d,
0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35,
0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d,
0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45,
0x46, 0x47, 0x48, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e,
0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56,
0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e,
0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66,
0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6f,
0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77,
0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f
};

const unsigned char saw[] = {
0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7,
0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf,
0x10, 0x11, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18,
0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20,
0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28,
0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30,
0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x38, 0x39,
0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41,
0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49,
0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51,
0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59,
0x5a, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62,
0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a,
0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72,
0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a,
0x7b, 0x7c, 0x7d, 0x7e, 0x80, 0x81, 0x82, 0x83,
0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b,
0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93,
0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0x9b,
0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3,
0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xab, 0xac,
0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xb2, 0xb3, 0xb4,
0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xbb, 0xbc,
0xbd, 0xbe, 0xbf, 0xc0, 0xc1, 0xc2, 0xc3, 0xc4,
0xc5, 0xc6, 0xc7, 0xc9, 0xca, 0xcb, 0xcc, 0xcd,
0xce, 0xcf, 0xd0, 0xd1, 0xd2, 0xd3, 0xd4, 0xd5,
0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xdb, 0xdc, 0xdd,
0xde, 0xdf, 0xe0, 0xe1, 0xe2, 0xe3, 0xe4, 0xe5,
0xe6, 0xe7, 0xe8, 0xe9, 0xea, 0xeb, 0xec, 0xee,
0xef, 0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6,
0xf7, 0xf8, 0xf9, 0xfa, 0xfb, 0xfc, 0xfd, 0xfe
};

const unsigned char pulse50[] = {
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
};

const unsigned char pulse75[] = {
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
};

const unsigned char noise[] = {
0x50, 0x31, 0x64, 0x75, 0xdd, 0xaf, 0x3, 0x8d,
0xb1, 0xfe, 0xd7, 0xe3, 0xd8, 0x8e, 0x8d, 0x85,
0x4c, 0xd9, 0xfb, 0xf1, 0x4b, 0xf8, 0xcb, 0x4b,
0xf8, 0x46, 0x2c, 0xe7, 0x13, 0x35, 0x90, 0xc7,
0xd0, 0x88, 0xba, 0x70, 0x55, 0x4f, 0x4, 0x52,
0x7f, 0x8d, 0x82, 0xdd, 0xd8, 0x2f, 0x23, 0x66,
0x83, 0xd2, 0x9b, 0x56, 0xe, 0xf3, 0xf6, 0xeb,
0xa7, 0xc7, 0x63, 0x38, 0xdf, 0xcd, 0xd1, 0xee,
0x4, 0xfc, 0xf, 0x85, 0x47, 0xb8, 0xad, 0xbd,
0xec, 0x8d, 0xc0, 0x70, 0x4f, 0x35, 0x91, 0x8,
0xa6, 0x7d, 0x39, 0x43, 0xaa, 0xc0, 0xa7, 0xae,
0x84, 0x13, 0xe4, 0x4, 0x44, 0x8e, 0x9a, 0x4e,
0x16, 0xe0, 0x6a, 0x33, 0x31, 0x3c, 0xa8, 0x5f,
0x3c, 0xd8, 0x80, 0xea, 0x4d, 0x37, 0xc8, 0x25,
0xba, 0x9a, 0x2e, 0x77, 0x4a, 0xf0, 0x25, 0x23,
0x99, 0x58, 0x74, 0x3d, 0x6d, 0x7a, 0x3d, 0xed,
0xd4, 0xa3, 0xb5, 0x5b, 0x5b, 0xc6, 0xfc, 0xb2,
0x52, 0x13, 0x15, 0xa, 0x3f, 0x8a, 0x2, 0x85,
0xad, 0xe7, 0x81, 0x23, 0x55, 0xbc, 0x9c, 0xf7,
0x8c, 0xbf, 0x5, 0x95, 0x52, 0xcc, 0xe6, 0xb,
0x4e, 0xf6, 0x81, 0xd9, 0x96, 0xd9, 0xaf, 0xa3,
0x8a, 0x91, 0xf7, 0x83, 0xe1, 0xb9, 0xf3, 0x42,
0x9f, 0x66, 0x18, 0x47, 0x64, 0x17, 0xf1, 0x7b,
0xb3, 0xbe, 0xe2, 0xa3, 0x6d, 0xcb, 0x9, 0x1e,
0xe5, 0xe1, 0xb9, 0x53, 0x87, 0x4f, 0xdf, 0x93,
0x1f, 0xcb, 0x82, 0x63, 0xe4, 0x56, 0x9c, 0x38,
0xed, 0xd8, 0xa, 0x91, 0xa, 0xb4, 0x41, 0xcf,
0x2, 0x44, 0x27, 0x1d, 0x65, 0x34, 0xa4, 0x51,
0x71, 0x41, 0xbf, 0xb7, 0x0, 0x51, 0xd4, 0x6c,
0xbb, 0xdb, 0x3c, 0xc1, 0xbe, 0xa5, 0x25, 0x18,
0x7d, 0xe8, 0xa2, 0x29, 0xe2, 0x98, 0x9c, 0x6e
};
/* 
 * File:   resolution_management.h
 * Author: jamis
 *
 * Created on May 17, 2015, 2:37 PM
 */

#ifndef RESOLUTION_MANAGEMENT_H
#define	RESOLUTION_MANAGEMENT_H

#ifdef	__cplusplus
extern "C" {
#endif

// Probably the best bet (double buffered):
//80x480@60: 8bpp
//#define CLOCKDIV 69
//#define HOR_RES 80UL
//#define VER_RES 480UL
//#define HOR_FRONT_PORCH 32
//#define HOR_PULSE_WIDTH 16
//#define HOR_BACK_PORCH  32
//#define VER_FRONT_PORCH 10
//#define VER_PULSE_WIDTH 5
//#define VER_BACK_PORCH  10
//#define BPP 8

// Other options:

//80x480@60: 16bpp
#define CLOCKDIV 69
#define HOR_RES 80UL
#define VER_RES 480UL
#define HOR_FRONT_PORCH 32
#define HOR_PULSE_WIDTH 16
#define HOR_BACK_PORCH  32
#define VER_FRONT_PORCH 10
#define VER_PULSE_WIDTH 5
#define VER_BACK_PORCH  10
#define BPP 16
#define GFX_BUFFER_SIZE 76800 // This is only for BPP = 16 @480*80

// 160x480@4bpp
//#define CLOCKDIV 47
//#define HOR_RES 160UL
//#define VER_RES 480UL
//#define HOR_FRONT_PORCH 32
//#define HOR_PULSE_WIDTH 24
//#define HOR_BACK_PORCH  32
//#define VER_FRONT_PORCH 10
//#define VER_PULSE_WIDTH 5
//#define VER_BACK_PORCH  10
//#define BPP 8

// 320x480@4bpp
//#define CLOCKDIV 25
//#define HOR_RES 320UL
//#define VER_RES 480UL
//#define HOR_FRONT_PORCH 32
//#define HOR_PULSE_WIDTH 48
//#define HOR_BACK_PORCH  32
//#define VER_FRONT_PORCH 10
//#define VER_PULSE_WIDTH 5
//#define VER_BACK_PORCH  10
//#define BPP 4

// 480x480@2bpp
//#define CLOCKDIV 17
//#define HOR_RES 480UL
//#define VER_RES 480UL
//#define HOR_FRONT_PORCH 32
//#define HOR_PULSE_WIDTH 64
//#define HOR_BACK_PORCH  32
//#define VER_FRONT_PORCH 10
//#define VER_PULSE_WIDTH 5
//#define VER_BACK_PORCH  10
//#define BPP 2

//640x480@60: 1bpp
//#define CLOCKDIV 11
//#define HOR_RES 640UL
//#define VER_RES 480UL
//#define HOR_FRONT_PORCH 16
//#define HOR_PULSE_WIDTH 96
//#define HOR_BACK_PORCH  48
//#define VER_FRONT_PORCH 10
//#define VER_PULSE_WIDTH 2
//#define VER_BACK_PORCH  33
//#define BPP 1


// QVGA:
//#define CLOCKDIV 58
//#define HOR_RES 320UL
//#define VER_RES 240UL
//#define HOR_FRONT_PORCH 32
//#define HOR_PULSE_WIDTH 16
//#define HOR_BACK_PORCH  32
//#define VER_FRONT_PORCH 5
//#define VER_PULSE_WIDTH 3
//#define VER_BACK_PORCH  5
//#define BPP 8

// GPU Commands:
#define CHR_FGCOLOR	     0x5000
#define CHR_BGCOLOR	     0x5100
#define CHR_FONTBASE	    0x5200
#define CHR_PRINTCHAR	   0x5300
#define CHR_TXTAREASTART	0x5800
#define CHR_TXTAREAEND	  0x5900
#define CHR_PRINTPOS	    0x5A00
#define RCC_SRCADDR	     0x6200
#define RCC_DESTADDR	    0x6300
#define RCC_RECTSIZE	    0x6400
#define RCC_COLOR	       0x6600
#define RCC_STARTCOPY	   0x6700
#define IPU_SRCADDR	     0x7100
#define IPU_DESTADDR	    0x7200
#define IPU_DECOMPRESS	  0x7400

// Resolution is configured in resolution_management.c

#define VENST_FUDGE 0 /* vertical and horizontal offsets (to center display)*/
#define HENST_FUDGE 0 // 6 works for me on my monitor. How fix during demo?!?
#define VSPOL 0 /* sync polarities */
#define HSPOL 0

#define PIX_W 1
    
// Comment this out if you're using 16bpp:
//#define GFX_BUFFER_SIZE (HOR_RES * VER_RES / (8/BPP))

// Variables:
extern uint8_t PIX_H;

// Methods:
void config_graphics(void);


#ifdef	__cplusplus
}
#endif

#endif	/* RESOLUTION_MANAGEMENT_H */


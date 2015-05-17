/* 
 * File:   resolution_management.c
 * Author: jamis
 *
 * Created on May 17, 2015, 1:12 PM
 */

#ifndef RESOLUTION_MANAGEMENT_C
#define	RESOLUTION_MANAGEMENT_C

#ifdef	__cplusplus
extern "C" {
#endif


// These settings FULLY work:
//80x480@60: 16bpp
//#define CLOCKDIV 69
//#define HOR_RES 80UL
//#define VER_RES 480UL
//#define HOR_FRONT_PORCH 32
//#define HOR_PULSE_WIDTH 16
//#define HOR_BACK_PORCH  32
//#define VER_FRONT_PORCH 10
//#define VER_PULSE_WIDTH 5
//#define VER_BACK_PORCH  10
//#define BPP 16
//#define GFX_BUFFER_SIZE 76800 // This is only for BPP = 16 @480*80

// 160x480@4bpp
#define CLOCKDIV 47
#define HOR_RES 160UL
#define VER_RES 480UL
#define HOR_FRONT_PORCH 32
#define HOR_PULSE_WIDTH 24
#define HOR_BACK_PORCH  32
#define VER_FRONT_PORCH 10
#define VER_PULSE_WIDTH 5
#define VER_BACK_PORCH  10
#define BPP 4

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


#ifdef	__cplusplus
}
#endif

#endif	/* RESOLUTION_MANAGEMENT_C */


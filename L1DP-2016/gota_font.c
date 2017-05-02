/*****************************************************************************
 * FileName:        gota_font.c
 * Processor:       PIC24F, PIC24H, dsPIC
 * Compiler:        MPLAB C30/XC16 (see release notes for tested revision)
 * Linker:          MPLAB LINK30/XC16
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright(c) 2012 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 *
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.29.06
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>
#include "HardwareProfile.h"

/*****************************************************************************
 * SECTION:  Graphics Library Firmware Check
 *****************************************************************************/
#if(GRAPHICS_LIBRARY_VERSION != 0x0306)
#warning "It is suggested to use Graphics Library version 3.06 with this version of GRC."
#endif


/*****************************************************************************
 * Converted Resources
 * -------------------
 *
 *
 * Fonts
 * -----
 * Gota_Light_Bold_12 - Height: 13 pixels, 1 bit per pixel, Range: ' ' to 'z'
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: Gota_Light_Bold_12
 * Description:  Height: 13 pixels, 1 bit per pixel, Range: ' ' to 'z'
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern GFX_FONT_SPACE char __Gota_Light_Bold_12[] __attribute__((section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Gota_Light_Bold_12[] __attribute__((aligned(2)));
#endif

const FONT_FLASH Gota_Light_Bold_12 =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__Gota_Light_Bold_12
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section grc_text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___Gota_Light_Bold_12");
asm(".align 2");
asm("___Gota_Light_Bold_12:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x7A, 0x00");     // Last Character
asm(".byte 0x0D, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x74, 0x01, 0x00");       // Character - 32, offset (0x00000174)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x81, 0x01, 0x00");       // Character - 33, offset (0x00000181)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x8E, 0x01, 0x00");       // Character - 34, offset (0x0000018E)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x9B, 0x01, 0x00");       // Character - 35, offset (0x0000019B)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xA8, 0x01, 0x00");       // Character - 36, offset (0x000001A8)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xB5, 0x01, 0x00");       // Character - 37, offset (0x000001B5)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xC2, 0x01, 0x00");       // Character - 38, offset (0x000001C2)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0xCF, 0x01, 0x00");       // Character - 39, offset (0x000001CF)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xDC, 0x01, 0x00");       // Character - 40, offset (0x000001DC)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xE9, 0x01, 0x00");       // Character - 41, offset (0x000001E9)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xF6, 0x01, 0x00");       // Character - 42, offset (0x000001F6)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x03, 0x02, 0x00");       // Character - 43, offset (0x00000203)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x10, 0x02, 0x00");       // Character - 44, offset (0x00000210)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x1D, 0x02, 0x00");       // Character - 45, offset (0x0000021D)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x2A, 0x02, 0x00");       // Character - 46, offset (0x0000022A)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x37, 0x02, 0x00");       // Character - 47, offset (0x00000237)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x44, 0x02, 0x00");       // Character - 48, offset (0x00000244)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x5E, 0x02, 0x00");       // Character - 49, offset (0x0000025E)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x78, 0x02, 0x00");       // Character - 50, offset (0x00000278)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x92, 0x02, 0x00");       // Character - 51, offset (0x00000292)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xAC, 0x02, 0x00");       // Character - 52, offset (0x000002AC)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xC6, 0x02, 0x00");       // Character - 53, offset (0x000002C6)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xE0, 0x02, 0x00");       // Character - 54, offset (0x000002E0)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xFA, 0x02, 0x00");       // Character - 55, offset (0x000002FA)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x14, 0x03, 0x00");       // Character - 56, offset (0x00000314)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x2E, 0x03, 0x00");       // Character - 57, offset (0x0000032E)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x48, 0x03, 0x00");       // Character - 58, offset (0x00000348)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x55, 0x03, 0x00");       // Character - 59, offset (0x00000355)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x62, 0x03, 0x00");       // Character - 60, offset (0x00000362)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x6F, 0x03, 0x00");       // Character - 61, offset (0x0000036F)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x7C, 0x03, 0x00");       // Character - 62, offset (0x0000037C)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x89, 0x03, 0x00");       // Character - 63, offset (0x00000389)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xA3, 0x03, 0x00");       // Character - 64, offset (0x000003A3)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xB0, 0x03, 0x00");       // Character - 65, offset (0x000003B0)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xCA, 0x03, 0x00");       // Character - 66, offset (0x000003CA)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xE4, 0x03, 0x00");       // Character - 67, offset (0x000003E4)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xFE, 0x03, 0x00");       // Character - 68, offset (0x000003FE)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x18, 0x04, 0x00");       // Character - 69, offset (0x00000418)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x32, 0x04, 0x00");       // Character - 70, offset (0x00000432)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x4C, 0x04, 0x00");       // Character - 71, offset (0x0000044C)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x66, 0x04, 0x00");       // Character - 72, offset (0x00000466)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x80, 0x04, 0x00");       // Character - 73, offset (0x00000480)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x9A, 0x04, 0x00");       // Character - 74, offset (0x0000049A)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xB4, 0x04, 0x00");       // Character - 75, offset (0x000004B4)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xCE, 0x04, 0x00");       // Character - 76, offset (0x000004CE)
asm(".byte 0x0D");              // width of the glyph
asm(".byte 0xE8, 0x04, 0x00");       // Character - 77, offset (0x000004E8)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x02, 0x05, 0x00");       // Character - 78, offset (0x00000502)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x1C, 0x05, 0x00");       // Character - 79, offset (0x0000051C)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x36, 0x05, 0x00");       // Character - 80, offset (0x00000536)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x50, 0x05, 0x00");       // Character - 81, offset (0x00000550)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x6A, 0x05, 0x00");       // Character - 82, offset (0x0000056A)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x84, 0x05, 0x00");       // Character - 83, offset (0x00000584)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x9E, 0x05, 0x00");       // Character - 84, offset (0x0000059E)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xB8, 0x05, 0x00");       // Character - 85, offset (0x000005B8)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xD2, 0x05, 0x00");       // Character - 86, offset (0x000005D2)
asm(".byte 0x0D");              // width of the glyph
asm(".byte 0xEC, 0x05, 0x00");       // Character - 87, offset (0x000005EC)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x06, 0x06, 0x00");       // Character - 88, offset (0x00000606)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x20, 0x06, 0x00");       // Character - 89, offset (0x00000620)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x3A, 0x06, 0x00");       // Character - 90, offset (0x0000063A)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x54, 0x06, 0x00");       // Character - 91, offset (0x00000654)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x61, 0x06, 0x00");       // Character - 92, offset (0x00000661)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x6E, 0x06, 0x00");       // Character - 93, offset (0x0000066E)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x7B, 0x06, 0x00");       // Character - 94, offset (0x0000067B)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x88, 0x06, 0x00");       // Character - 95, offset (0x00000688)
asm(".byte 0x04");              // width of the glyph
asm(".byte 0x95, 0x06, 0x00");       // Character - 96, offset (0x00000695)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xA2, 0x06, 0x00");       // Character - 97, offset (0x000006A2)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xBC, 0x06, 0x00");       // Character - 98, offset (0x000006BC)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xD6, 0x06, 0x00");       // Character - 99, offset (0x000006D6)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xF0, 0x06, 0x00");       // Character - 100, offset (0x000006F0)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x0A, 0x07, 0x00");       // Character - 101, offset (0x0000070A)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x24, 0x07, 0x00");       // Character - 102, offset (0x00000724)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x3E, 0x07, 0x00");       // Character - 103, offset (0x0000073E)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x58, 0x07, 0x00");       // Character - 104, offset (0x00000758)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x72, 0x07, 0x00");       // Character - 105, offset (0x00000772)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x8C, 0x07, 0x00");       // Character - 106, offset (0x0000078C)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xA6, 0x07, 0x00");       // Character - 107, offset (0x000007A6)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xC0, 0x07, 0x00");       // Character - 108, offset (0x000007C0)
asm(".byte 0x0D");              // width of the glyph
asm(".byte 0xDA, 0x07, 0x00");       // Character - 109, offset (0x000007DA)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0xF4, 0x07, 0x00");       // Character - 110, offset (0x000007F4)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x0E, 0x08, 0x00");       // Character - 111, offset (0x0000080E)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x28, 0x08, 0x00");       // Character - 112, offset (0x00000828)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x42, 0x08, 0x00");       // Character - 113, offset (0x00000842)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x5C, 0x08, 0x00");       // Character - 114, offset (0x0000085C)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x76, 0x08, 0x00");       // Character - 115, offset (0x00000876)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x90, 0x08, 0x00");       // Character - 116, offset (0x00000890)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xAA, 0x08, 0x00");       // Character - 117, offset (0x000008AA)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xC4, 0x08, 0x00");       // Character - 118, offset (0x000008C4)
asm(".byte 0x0D");              // width of the glyph
asm(".byte 0xDE, 0x08, 0x00");       // Character - 119, offset (0x000008DE)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0xF8, 0x08, 0x00");       // Character - 120, offset (0x000008F8)
asm(".byte 0x0B");              // width of the glyph
asm(".byte 0x12, 0x09, 0x00");       // Character - 121, offset (0x00000912)
asm(".byte 0x0A");              // width of the glyph
asm(".byte 0x2C, 0x09, 0x00");       // Character - 122, offset (0x0000092C)
/***********************************
 * Font Characters
 ***********************************/
/***********************************
 * Character - 32
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 33
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 34
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 35
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 36
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 37
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 38
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 39
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 40
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 41
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 42
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 43
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 44
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 45
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 46
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 47
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 48
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x0E, 0x03");        //  ***    **      
asm(".byte 0x16, 0x03");        //  ** *   **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x66, 0x02");        //  **  **  *      
asm(".byte 0xC6, 0x02");        //  **   ** *      
asm(".byte 0x86, 0x03");        //  **    ***      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 49
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x3F, 0x00");        // ******          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 50
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0xFF, 0x00");        // ********        
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 51
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 52
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFC, 0x03");        //   ********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 53
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x00");        //  *******        
asm(".byte 0x80, 0x03");        //        ***      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 54
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 55
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0xC0, 0x00");        //       **        
asm(".byte 0x60, 0x00");        //      **         
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x18, 0x00");        //    **           
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 56
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 57
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x03, 0x03");        // **      **      
asm(".byte 0x03, 0x03");        // **      **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFC, 0x03");        //   ********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 58
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 59
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x06");        //  **     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 60
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 61
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 62
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 63
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x01");        // *********       
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0xFC, 0x00");        //   ******        
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 64
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 65
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 66
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 67
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 68
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 69
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 70
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 71
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xF6, 0x03");        //  ** ******      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 72
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 73
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 74
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xF8, 0x03");        //    *******      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 75
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x86, 0x03");        //  **    ***      
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x66, 0x00");        //  **  **         
asm(".byte 0x36, 0x00");        //  ** **          
asm(".byte 0x2E, 0x00");        //  *** *          
asm(".byte 0x66, 0x00");        //  **  **         
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x86, 0x03");        //  **    ***      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 76
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 77
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x0C, 0x06");        //   **     **     
asm(".byte 0xB6, 0x1B");        //  ** ** *** **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xF6, 0x19");        //  ** *****  **   
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 78
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0xE6, 0x01");        //  **  ****       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 79
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 80
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x00");        //  *******        
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 81
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x66, 0x02");        //  **  **  *      
asm(".byte 0xC6, 0x02");        //  **   ** *      
asm(".byte 0x86, 0x03");        //  **    ***      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 82
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x00");        //  *******        
asm(".byte 0x36, 0x00");        //  ** **          
asm(".byte 0x36, 0x00");        //  ** **          
asm(".byte 0xF6, 0x03");        //  ** ******      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 83
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFC, 0x03");        //   ********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 84
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 85
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 86
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x03, 0x03");        // **      **      
asm(".byte 0x83, 0x01");        // **     **       
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0xCC, 0x00");        //   **  **        
asm(".byte 0x6C, 0x00");        //   ** **         
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 87
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x60, 0x00");        //      **         
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0x1E, 0x0F");        //  ****   ****    
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 88
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x83, 0x03");        // **     ***      
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x6C, 0x00");        //   ** **         
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x6C, 0x00");        //   ** **         
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x83, 0x03");        // **     ***      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 89
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x87, 0x03");        // ***    ***      
asm(".byte 0xCC, 0x00");        //   **  **        
asm(".byte 0x6C, 0x00");        //   ** **         
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 90
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0xC0, 0x00");        //       **        
asm(".byte 0x70, 0x00");        //     ***         
asm(".byte 0x18, 0x00");        //    **           
asm(".byte 0x0E, 0x00");        //  ***            
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 91
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 92
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 93
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 94
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 95
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 96
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x0F");        // ****    
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 97
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0xFC, 0x03");        //   ********      
asm(".byte 0x07, 0x03");        // ***     **      
asm(".byte 0x03, 0x03");        // **      **      
asm(".byte 0x03, 0x03");        // **      **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 98
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 99
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 100
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 101
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x00");        //  *******        
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 102
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 103
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xF6, 0x03");        //  ** ******      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 104
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 105
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0x30, 0x00");        //     **          
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 106
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 107
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x86, 0x03");        //  **    ***      
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x66, 0x00");        //  **  **         
asm(".byte 0x36, 0x00");        //  ** **          
asm(".byte 0x2E, 0x00");        //  *** *          
asm(".byte 0x66, 0x00");        //  **  **         
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x86, 0x03");        //  **    ***      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 108
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 109
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x0C, 0x06");        //   **     **     
asm(".byte 0xB6, 0x1B");        //  ** ** *** **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xF6, 0x19");        //  ** *****  **   
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 110
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x0C, 0x00");        //   **            
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0x36, 0x03");        //  ** **  **      
asm(".byte 0xE6, 0x01");        //  **  ****       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 111
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 112
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x00");        //  *******        
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 113
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x66, 0x02");        //  **  **  *      
asm(".byte 0xC6, 0x02");        //  **   ** *      
asm(".byte 0x86, 0x03");        //  **    ***      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 114
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xFE, 0x00");        //  *******        
asm(".byte 0x36, 0x00");        //  ** **          
asm(".byte 0x36, 0x00");        //  ** **          
asm(".byte 0xF6, 0x03");        //  ** ******      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 115
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFC, 0x03");        //   ********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 116
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0x06, 0x00");        //  **             
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 117
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 118
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x03, 0x03");        // **      **      
asm(".byte 0x83, 0x01");        // **     **       
asm(".byte 0x86, 0x01");        //  **    **       
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0xCC, 0x00");        //   **  **        
asm(".byte 0x6C, 0x00");        //   ** **         
asm(".byte 0x78, 0x00");        //    ****         
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 119
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x60, 0x00");        //      **         
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0xB6, 0x19");        //  ** ** **  **   
asm(".byte 0x1E, 0x0F");        //  ****   ****    
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 120
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x83, 0x03");        // **     ***      
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x6C, 0x00");        //   ** **         
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x38, 0x00");        //    ***          
asm(".byte 0x6C, 0x00");        //   ** **         
asm(".byte 0xC6, 0x00");        //  **   **        
asm(".byte 0x83, 0x03");        // **     ***      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 121
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0x06, 0x03");        //  **     **      
asm(".byte 0xFC, 0x03");        //   ********      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0x00, 0x03");        //         **      
asm(".byte 0xFE, 0x01");        //  ********       
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

/***********************************
 * Character - 122
 ***********************************/
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0xFE, 0x03");        //  *********      
asm(".byte 0x80, 0x01");        //        **       
asm(".byte 0xC0, 0x00");        //       **        
asm(".byte 0x70, 0x00");        //     ***         
asm(".byte 0x18, 0x00");        //    **           
asm(".byte 0x0E, 0x00");        //  ***            
asm(".byte 0x03, 0x00");        // **              
asm(".byte 0xFF, 0x03");        // **********      
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 
asm(".byte 0x00, 0x00");        //                 

asm(".section .const, psv, page");

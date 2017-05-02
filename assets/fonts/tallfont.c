/*****************************************************************************
 * FileName:        tallfont.c
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
 * Tallpix_18 - Height: 21 pixels, 1 bit per pixel, Range: ' ' to '~'
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: Tallpix_18
 * Description:  Height: 21 pixels, 1 bit per pixel, Range: ' ' to '~'
 ***********************************/
#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
extern GFX_FONT_SPACE char __Tallpix_18[] __attribute__((section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Tallpix_18[] __attribute__((aligned(2)));
#endif

const FONT_FLASH Tallpix_18 =
{
    (FLASH | COMP_NONE),
    (GFX_FONT_SPACE char *)__Tallpix_18
};

#ifdef USE_GFX_FONT_IN_PROGRAM_SECTION
asm(".section grc_text, code");
#else
asm(".section .const, psv, page");
#endif
asm(".global ___Tallpix_18");
asm(".align 2");
asm("___Tallpix_18:");
/****************************************
 * Font header
 ****************************************/
asm(".byte 0x00");           // Font ID
asm(".byte 0x00");           // Font information:  1 bit per pixel, Characters zero degress rotation
asm(".byte 0x20, 0x00");     // First Character
asm(".byte 0x7E, 0x00");     // Last Character
asm(".byte 0x15, 0x00");     // Height
/****************************************
 * Font Glyph Table
 ****************************************/
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x84, 0x01, 0x00");       // Character - 32, offset (0x00000184)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0x99, 0x01, 0x00");       // Character - 33, offset (0x00000199)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xAE, 0x01, 0x00");       // Character - 34, offset (0x000001AE)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xC3, 0x01, 0x00");       // Character - 35, offset (0x000001C3)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD8, 0x01, 0x00");       // Character - 36, offset (0x000001D8)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xED, 0x01, 0x00");       // Character - 37, offset (0x000001ED)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x02, 0x02, 0x00");       // Character - 38, offset (0x00000202)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0x17, 0x02, 0x00");       // Character - 39, offset (0x00000217)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x2C, 0x02, 0x00");       // Character - 40, offset (0x0000022C)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x41, 0x02, 0x00");       // Character - 41, offset (0x00000241)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x56, 0x02, 0x00");       // Character - 42, offset (0x00000256)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x6B, 0x02, 0x00");       // Character - 43, offset (0x0000026B)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0x80, 0x02, 0x00");       // Character - 44, offset (0x00000280)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x95, 0x02, 0x00");       // Character - 45, offset (0x00000295)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0xAA, 0x02, 0x00");       // Character - 46, offset (0x000002AA)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xBF, 0x02, 0x00");       // Character - 47, offset (0x000002BF)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD4, 0x02, 0x00");       // Character - 48, offset (0x000002D4)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0xE9, 0x02, 0x00");       // Character - 49, offset (0x000002E9)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xFE, 0x02, 0x00");       // Character - 50, offset (0x000002FE)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x13, 0x03, 0x00");       // Character - 51, offset (0x00000313)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x28, 0x03, 0x00");       // Character - 52, offset (0x00000328)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x3D, 0x03, 0x00");       // Character - 53, offset (0x0000033D)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x52, 0x03, 0x00");       // Character - 54, offset (0x00000352)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x67, 0x03, 0x00");       // Character - 55, offset (0x00000367)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x7C, 0x03, 0x00");       // Character - 56, offset (0x0000037C)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x91, 0x03, 0x00");       // Character - 57, offset (0x00000391)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0xA6, 0x03, 0x00");       // Character - 58, offset (0x000003A6)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0xBB, 0x03, 0x00");       // Character - 59, offset (0x000003BB)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD0, 0x03, 0x00");       // Character - 60, offset (0x000003D0)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xE5, 0x03, 0x00");       // Character - 61, offset (0x000003E5)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xFA, 0x03, 0x00");       // Character - 62, offset (0x000003FA)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x0F, 0x04, 0x00");       // Character - 63, offset (0x0000040F)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x24, 0x04, 0x00");       // Character - 64, offset (0x00000424)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x39, 0x04, 0x00");       // Character - 65, offset (0x00000439)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x4E, 0x04, 0x00");       // Character - 66, offset (0x0000044E)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x63, 0x04, 0x00");       // Character - 67, offset (0x00000463)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x78, 0x04, 0x00");       // Character - 68, offset (0x00000478)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x8D, 0x04, 0x00");       // Character - 69, offset (0x0000048D)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xA2, 0x04, 0x00");       // Character - 70, offset (0x000004A2)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xB7, 0x04, 0x00");       // Character - 71, offset (0x000004B7)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xCC, 0x04, 0x00");       // Character - 72, offset (0x000004CC)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0xE1, 0x04, 0x00");       // Character - 73, offset (0x000004E1)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xF6, 0x04, 0x00");       // Character - 74, offset (0x000004F6)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x0B, 0x05, 0x00");       // Character - 75, offset (0x0000050B)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x20, 0x05, 0x00");       // Character - 76, offset (0x00000520)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x35, 0x05, 0x00");       // Character - 77, offset (0x00000535)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x4A, 0x05, 0x00");       // Character - 78, offset (0x0000054A)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x5F, 0x05, 0x00");       // Character - 79, offset (0x0000055F)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x74, 0x05, 0x00");       // Character - 80, offset (0x00000574)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x89, 0x05, 0x00");       // Character - 81, offset (0x00000589)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x9E, 0x05, 0x00");       // Character - 82, offset (0x0000059E)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xB3, 0x05, 0x00");       // Character - 83, offset (0x000005B3)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xC8, 0x05, 0x00");       // Character - 84, offset (0x000005C8)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xDD, 0x05, 0x00");       // Character - 85, offset (0x000005DD)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xF2, 0x05, 0x00");       // Character - 86, offset (0x000005F2)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0x07, 0x06, 0x00");       // Character - 87, offset (0x00000607)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x1C, 0x06, 0x00");       // Character - 88, offset (0x0000061C)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x31, 0x06, 0x00");       // Character - 89, offset (0x00000631)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x46, 0x06, 0x00");       // Character - 90, offset (0x00000646)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x5B, 0x06, 0x00");       // Character - 91, offset (0x0000065B)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x70, 0x06, 0x00");       // Character - 92, offset (0x00000670)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x85, 0x06, 0x00");       // Character - 93, offset (0x00000685)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x9A, 0x06, 0x00");       // Character - 94, offset (0x0000069A)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xAF, 0x06, 0x00");       // Character - 95, offset (0x000006AF)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0xC4, 0x06, 0x00");       // Character - 96, offset (0x000006C4)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD9, 0x06, 0x00");       // Character - 97, offset (0x000006D9)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xEE, 0x06, 0x00");       // Character - 98, offset (0x000006EE)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x03, 0x07, 0x00");       // Character - 99, offset (0x00000703)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x18, 0x07, 0x00");       // Character - 100, offset (0x00000718)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x2D, 0x07, 0x00");       // Character - 101, offset (0x0000072D)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x42, 0x07, 0x00");       // Character - 102, offset (0x00000742)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x57, 0x07, 0x00");       // Character - 103, offset (0x00000757)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x6D, 0x07, 0x00");       // Character - 104, offset (0x0000076D)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0x82, 0x07, 0x00");       // Character - 105, offset (0x00000782)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x97, 0x07, 0x00");       // Character - 106, offset (0x00000797)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xAD, 0x07, 0x00");       // Character - 107, offset (0x000007AD)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0xC2, 0x07, 0x00");       // Character - 108, offset (0x000007C2)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xD7, 0x07, 0x00");       // Character - 109, offset (0x000007D7)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xEC, 0x07, 0x00");       // Character - 110, offset (0x000007EC)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x01, 0x08, 0x00");       // Character - 111, offset (0x00000801)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x16, 0x08, 0x00");       // Character - 112, offset (0x00000816)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x2C, 0x08, 0x00");       // Character - 113, offset (0x0000082C)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x42, 0x08, 0x00");       // Character - 114, offset (0x00000842)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x57, 0x08, 0x00");       // Character - 115, offset (0x00000857)
asm(".byte 0x03");              // width of the glyph
asm(".byte 0x6C, 0x08, 0x00");       // Character - 116, offset (0x0000086C)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x81, 0x08, 0x00");       // Character - 117, offset (0x00000881)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x96, 0x08, 0x00");       // Character - 118, offset (0x00000896)
asm(".byte 0x07");              // width of the glyph
asm(".byte 0xAB, 0x08, 0x00");       // Character - 119, offset (0x000008AB)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xC0, 0x08, 0x00");       // Character - 120, offset (0x000008C0)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xD5, 0x08, 0x00");       // Character - 121, offset (0x000008D5)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0xEB, 0x08, 0x00");       // Character - 122, offset (0x000008EB)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x00, 0x09, 0x00");       // Character - 123, offset (0x00000900)
asm(".byte 0x02");              // width of the glyph
asm(".byte 0x15, 0x09, 0x00");       // Character - 124, offset (0x00000915)
asm(".byte 0x05");              // width of the glyph
asm(".byte 0x2A, 0x09, 0x00");       // Character - 125, offset (0x0000092A)
asm(".byte 0x06");              // width of the glyph
asm(".byte 0x3F, 0x09, 0x00");       // Character - 126, offset (0x0000093F)
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
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 34
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
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
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
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
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x02");        //  *      
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
asm(".byte 0x05");        // * *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x05");        // * *     
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
asm(".byte 0x02");        //  *      
asm(".byte 0x05");        // * *     
asm(".byte 0x02");        //  *      
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 39
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
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
 * Character - 40
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
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
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
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
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x02");        //  *      
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
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x02");        //  *      
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
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
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
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
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
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 48
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 49
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 50
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 51
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 52
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 53
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 54
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 55
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 56
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 57
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 58
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
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
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
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
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
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
asm(".byte 0x07");        // ***     
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
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x06");        //  **     
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 63
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x04");        //   *     
asm(".byte 0x06");        //  **     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 64
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 65
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 66
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x03");        // **      
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 67
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 68
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x03");        // **      
asm(".byte 0x03");        // **      
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 69
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 70
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 71
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 72
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 73
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 74
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 75
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x03");        // **      
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 76
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 77
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x3F");        // ******  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 78
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 79
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 80
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 81
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 82
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x03");        // **      
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 83
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 84
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 85
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 86
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 87
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x1A");        //  * **   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 88
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x02");        //  *      
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 89
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 90
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x03");        // **      
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 91
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 92
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x06");        //  **     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
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
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
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
asm(".byte 0x02");        //  *      
asm(".byte 0x05");        // * *     
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
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 96
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
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
 * Character - 97
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 98
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 99
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 100
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 101
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 102
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 103
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     

/***********************************
 * Character - 104
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 105
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 106
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     

/***********************************
 * Character - 107
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x03");        // **      
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 108
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 109
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x3F");        // ******  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 110
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 111
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 112
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       

/***********************************
 * Character - 113
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     

/***********************************
 * Character - 114
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 115
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 116
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x03");        // **      
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x03");        // **      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 117
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 118
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x02");        //  *      
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 119
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x35");        // * * **  
asm(".byte 0x1A");        //  * **   
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 120
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x02");        //  *      
asm(".byte 0x07");        // ***     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 121
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x07");        // ***     
asm(".byte 0x07");        // ***     

/***********************************
 * Character - 122
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x07");        // ***     
asm(".byte 0x04");        //   *     
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x07");        // ***     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 123
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x04");        //   *     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x03");        // **      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 124
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         

/***********************************
 * Character - 125
 ***********************************/
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x01");        // *       
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x04");        //   *     
asm(".byte 0x06");        //  **     
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x02");        //  *      
asm(".byte 0x01");        // *       
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

/***********************************
 * Character - 126
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
asm(".byte 0x1A");        //  * **   
asm(".byte 0x05");        // * *     
asm(".byte 0x05");        // * *     
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         
asm(".byte 0x00");        //         

asm(".section .const, psv, page");

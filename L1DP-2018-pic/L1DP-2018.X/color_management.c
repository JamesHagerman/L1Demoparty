#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include "system.h" // declares FCY
#include <libpic30.h>
#include "color_management.h"


void config_clut() {
//    _CLUTADR = 0; // set 0 to black
//    _CLUTRWEN = 1;
//    G1CLUTWR = 0;
//    while(_CLUTBUSY) continue;
//    _CLUTADR = 1; // set 1 to blue
//    G1CLUTWR = 0xFF;
//    while(_CLUTBUSY) continue;
//    _CLUTRWEN = 0;
    _CLUTEN = 1; // let 'er rip!
}
void clut_set(uint8_t index, uint16_t color) {
    _CLUTADR = index;
    _CLUTRWEN = 1;
    G1CLUTWR = color;
    while(_CLUTBUSY) continue;
    _CLUTRWEN = 0;
}

void calc_colors(int startingIndex) {
    //
    // CLUT ONLY HAS 255 ADDRESSES!
    // CLUT ALWAYS HOLDS 16 BIT COLORS!!
    //
    uint16_t i;
    uint16_t color = 0;
    uint8_t r, g, b, sat = 255, val = 255; // hue
    //printf("Setting up CLUT:\r\n");
    
    
    // Only build CLUT rainbow for colors we WANT to use:
    for (i = startingIndex; i <= 254; i++) {
        hsvtorgb(&r,&g,&b,i,sat,val);
        color = get16bppRGBColor(r,g,b); 
//        printf("%i: %u ", i, color);
//        __delay_ms(1); // let uart catch up...
        clut_set(i, color);
    }
    
    clut_set(  0, 0x0000); // black needs to stay black...
    clut_set(255, 0xFFFF); // white needs to stay white...
    //printf("\r\nDone!\r\n");
}


//NewValue = (((OldValue - OldMin) * (NewMax - NewMin)) / (OldMax - OldMin)) + NewMin
uint16_t map(uint16_t input, uint16_t input_start, uint16_t input_end, uint16_t output_start, uint16_t output_end) {
    return (((input - input_start) * (output_end - output_start)) / (input_end - input_start)) + output_start;
}

uint16_t get16bppRGBColor(uint16_t red, uint16_t green, uint16_t blue) {
    // Scale the range back down to our full color range first:
    red = map(red, 0, 255, 0, 0x1f);
    green = map(green, 0, 255, 0, 0x3f);
    blue = map(blue, 0, 255, 0, 0x1f);

    // Then shift the colors into the right places (making sure we only keep the GOOD bits)
    red = ((red << 11) & 0xf800);
    green = ((green << 5) & 0x7E0);
    blue = ((blue) & 0x1F);

    // Combine them into a color!
    return red | green | blue;
}

uint8_t get8bppRGBColor(uint8_t red, uint8_t green, uint8_t blue) {
    // Scale the range back down to our full color range first:
    red = map(red, 0, 255, 0, 0x7);
    green = map(green, 0, 255, 0, 0x7);
    blue = map(blue, 0, 255, 0, 0x3);

    // Then shift the colors into the right places (making sure we only keep the GOOD bits)
    red = ((red << 5) & 0xe0);
    green = ((green << 2) & 0x1c);
    blue = ((blue) & 0x03);

    return red | green | blue;
}

// Taken from: http://web.mit.edu/storborg/Public/hsvtorgb.c
// And modified to work correctly. "Integer overflows are bullshit.", he said
// the year before he realized how useful they'd be for audio...
void hsvtorgb(unsigned char *r, unsigned char *g, unsigned char *b, unsigned char h, unsigned char s, unsigned char v) {
    uint16_t region, fpart, p, q, t;

    if(s == 0) {
        /* color is grayscale */
        *r = *g = *b = v;
        return;
    }

    /* make hue 0-5 */
    region = h / 43;
    /* find remainder part, make it from 0-255 */
    fpart = (h - (region * 43)) * 6;

    /* calculate temp vars, doing integer multiplication */
    p = (v * (255 - s)) >> 8;
    q = (v * (255 - ((s * fpart) >> 8))) >> 8;
    t = (v * (255 - ((s * (255 - fpart)) >> 8))) >> 8;

    /* assign temp vars based on color cone region */
    switch(region) {
        case 0:
            *r = v; *g = t; *b = p; break;
        case 1:
            *r = q; *g = v; *b = p; break;
        case 2:
            *r = p; *g = v; *b = t; break;
        case 3:
            *r = p; *g = q; *b = v; break;
        case 4:
            *r = t; *g = p; *b = v; break;
        default:
            *r = v; *g = p; *b = q; break;
    }

    return;
}
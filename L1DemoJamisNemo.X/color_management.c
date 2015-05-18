#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
//#include <float.h>
#include <libpic30.h>
#include "color_management.h"


//NewValue = (((OldValue - OldMin) * (NewMax - NewMin)) / (OldMax - OldMin)) + NewMin
uint16_t map(uint16_t input, uint16_t input_start, uint16_t input_end, uint16_t output_start, uint16_t output_end) {
    return (((input - input_start) * (output_end - output_start)) / (input_end - input_start)) + output_start;
}

uint16_t get16bppRGBColor(uint16_t red, uint16_t blue, uint16_t green) {
    // Scale the range back down to our full color range first:
    red = map(red, 0, 255, 0, 0x1f);
    blue = map(blue, 0, 255, 0, 0x3f);
    green = map(green, 0, 255, 0, 0x1f);

    // Then shift the colors into the right places (making sure we only keep the GOOD bits)
    red = ((red << 11) & 0xf800);
    blue = ((blue << 5) & 0x7E0);
    green = ((green) & 0x1F);

    // Combine them into a color!
    return red | blue | green;
}

uint8_t get8bppRGBColor(uint8_t red, uint8_t blue, uint8_t green) {
    // Scale the range back down to our full color range first:
    red = map(red, 0, 255, 0, 0x7);
    blue = map(blue, 0, 255, 0, 0x7);
    green = map(green, 0, 255, 0, 0x3);

    // Then shift the colors into the right places (making sure we only keep the GOOD bits)
    red = ((red << 5) & 0xe0);
    blue = ((blue << 2) & 0x1c);
    green = ((green) & 0x03);

    return red | blue | green;
}

// Taken from: http://web.mit.edu/storborg/Public/hsvtorgb.c
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
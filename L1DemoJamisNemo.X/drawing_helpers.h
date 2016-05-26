/* 
 * File:   helpers.h
 * Author: jamis
 *
 * Created on May 17, 2015, 7:21 PM
 */

#ifndef HELPERS_H
#define	HELPERS_H

#ifdef	__cplusplus
extern "C" {
#endif

// Variables:
//extern float angle, x[8], y[8], z[8], rx[8], ry[8], rz[8], scrx[8], scry[8];

// Methods:
float radians(uint16_t angle);
int realtoint(float oldval, float oldmin, float oldmax, float newmin, float newmax);

void rcc_color(unsigned int color);
void rcc_setdest(__eds__ uint8_t *buf);
void rcc_draw(uint16_t x, uint16_t y, uint16_t w, uint16_t h);
void rcc_w1tow2(__eds__ uint8_t *dest, __eds__ uint8_t *src);
extern inline void fast_pixel(unsigned long ax, unsigned long ay);

void line(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void lineFloat(float x1, float y1, float x2, float y2);

void blank_background();
void cleanup(void);
void drawBorder(uint16_t c);

void verBlind(void);

void render (float xa, float ya, float za);

#ifdef	__cplusplus
}
#endif

#endif	/* HELPERS_H */


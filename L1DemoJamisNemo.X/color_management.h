/* 
 * File:   color_management.h
 * Author: jamis
 *
 * Created on May 17, 2015, 2:36 PM
 */

#ifndef COLOR_MANAGEMENT_H
#define	COLOR_MANAGEMENT_H

#ifdef	__cplusplus
extern "C" {
#endif
    
uint8_t getRGBColor(uint8_t red, uint8_t blue, uint8_t green);
void hsvtorgb(unsigned char *r, unsigned char *g, unsigned char *b, unsigned char h, unsigned char s, unsigned char v);

#ifdef	__cplusplus
}
#endif

#endif	/* COLOR_MANAGEMENT_H */


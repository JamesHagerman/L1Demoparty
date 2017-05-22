/* 
 * File:   text.h
 * Author: jamis
 *
 * Created on May 17, 2015, 7:43 PM
 */

#ifndef TEXT_H
#define	TEXT_H

#ifdef	__cplusplus
extern "C" {
#endif

extern uint8_t charHeight;
extern uint8_t charWidth;
extern int maxCharHeight;

void config_chr(void);
void chr_print(char *c, uint16_t x, uint16_t y);
void setTextColor(uint8_t fontColor);

extern uint8_t FontStart[] __attribute__((space(eds), section("FONTS") ));

#ifdef	__cplusplus
}
#endif

#endif	/* TEXT_H */


/* 
 * File:   serial.h
 * Author: jamis
 *
 * Created on May 17, 2015, 5:36 PM
 */

#ifndef SERIAL_H
#define	SERIAL_H

#ifdef	__cplusplus
extern "C" {
#endif

void config_uart(void);
int putc(int ch, FILE *fd);


#ifdef	__cplusplus
}
#endif

#endif	/* SERIAL_H */


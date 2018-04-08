/* 
 * File:   serial.h
 * Author: jamis
 *
 * Created on May 17, 2015, 5:36 PM
 */
#include <stdbool.h>

#ifndef SERIAL_H
#define	SERIAL_H

#ifdef	__cplusplus
extern "C" {
#endif


// TODO: Define all of this stuff in a struct so it is easier to abstract:
#define	RX_BUF_SIZE_U1	128
#define	TX_BUF_SIZE_U1	128
extern unsigned int rxSizeU1;
extern unsigned int txSizeU1;
extern unsigned char rxBufU1[RX_BUF_SIZE_U1];
extern unsigned char txBufU1[TX_BUF_SIZE_U1];
extern bool dataAvailableU1;

#define	RX_BUF_SIZE_U2	128
#define	TX_BUF_SIZE_U2	128
extern unsigned int rxSizeU2;
extern unsigned int txSizeU2;
extern unsigned char rxBufU2[RX_BUF_SIZE_U2];
extern unsigned char txBufU2[TX_BUF_SIZE_U2];
extern bool dataAvailableU2;

void config_uart(unsigned long baudRate);
void reset_buffer();

// TODO: Build a keyboard handler...
//int handleSerialInput();


#ifdef	__cplusplus
}
#endif

#endif	/* SERIAL_H */


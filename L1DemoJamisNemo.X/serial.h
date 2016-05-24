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

#define	RX_BUF_SIZE	128
#define	TX_BUF_SIZE	128
extern unsigned char	rx1Buf[RX_BUF_SIZE];
extern unsigned char	tx1Buf[TX_BUF_SIZE];
extern unsigned int rxSize;
extern unsigned int txSize;
extern bool dataAvailable;

void config_uart(void);
void reset_buffer();


#ifdef	__cplusplus
}
#endif

#endif	/* SERIAL_H */


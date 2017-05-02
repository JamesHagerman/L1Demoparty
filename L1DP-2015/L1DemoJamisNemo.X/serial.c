#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
//#include <float.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "serial.h"

void __attribute__((interrupt, no_auto_psv)) _U1RXInterrupt( void ) {

    IFS0bits.U1RXIF = 0; // Clear interrupt flag

    //Check for UART receive overrun
    if(U1STAbits.OERR == 1) {
        U1STAbits.OERR = 0;
    } else {
        if(U1STAbits.FERR == 0) {

            // Read out the UART FIFO
            uint8_t ch;
            while(U1STAbits.URXDA == 1) {
                ch = U1RXREG;
            }
        } else {
            // UART framming error...
            // grab from U1RXREG;
        }
    }
}

#define	RX_BUF_SIZE	128
#define	TX_BUF_SIZE	128
int	rx1Buf[RX_BUF_SIZE];
int	tx1Buf[TX_BUF_SIZE];
void __attribute__((__interrupt__, no_auto_psv)) _U1TXInterrupt(void) {

    int ch;
    ch = tx1Buf[0];
    U1TXREG = ch;
    IFS0bits.U1TXIF = 0; // Clear interrupt flag
}
void config_uart(void) {
    OSCCONbits.IOLOCK = 0; // unlock the peripheral Control Register Lock
    RPINR18bits.U1RXR = 7; // Map UART1 RX peripheral to RP7
    RPOR3bits.RP6R = 3; // Map RP6 pin to UART1 TX
    OSCCONbits.IOLOCK = 1; // relock the peripheral Control Register Lock


    /* ripped from some other code:
#define BAUDRATE2       31250UL
#define BRG_DIV2        4
#define BRGH2           1
     */
    U1BRG = (((FCY)/(4 * 9600UL)) - 1);
    U1MODE = 0;
    U1MODEbits.BRGH = 1;
    U1STA = 0;
    U1MODEbits.UARTEN = 1;
    U1STAbits.UTXEN = 1;
    IFS0bits.U1RXIF = 0;



    // Turn interrupt for UART receive on, with highest priority
    IEC0bits.U1RXIE = 1;
    IPC7 |= 0x0700;
}

int putc(int ch, FILE *fd) {
    tx1Buf[0] = ch;
    return 0;
}
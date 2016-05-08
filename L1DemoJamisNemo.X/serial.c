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

void __attribute__((__interrupt__, no_auto_psv)) _U1RXInterrupt( void ) {

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

//    int ch;
//    ch = tx1Buf[0];
//    c
    IFS0bits.U1TXIF = 0; // Clear interrupt flag
}
void config_uart(void) {
    OSCCONbits.IOLOCK = 0;  // unlock the peripheral Control Register Lock
    RPINR18bits.U1RXR = 7;  // Map UART1 RX peripheral to RP7
    RPOR3bits.RP6R = 3;     // Map RP6 pin to UART1 TX
    OSCCONbits.IOLOCK = 1;  // relock the peripheral Control Register Lock

    

    /* ripped from some other code:
#define BAUDRATE2       31250UL
#define BRG_DIV2        4
#define BRGH2           1
     */
    // Set baud rate:
    U1BRG = (((FCY)/(4 * 9600UL)) - 1);
    
    // Set interrupt priorities:
    // (Honestly, not sure what this is doing...)
    IPC3bits.U1TXIP2 = 1; //Set Uart TX Interrupt Priority
    IPC3bits.U1TXIP1 = 0;
    IPC3bits.U1TXIP0 = 0;
    IPC2bits.U1RXIP2 = 1; //Set Uart RX Interrupt Priority
    IPC2bits.U1RXIP1 = 0;
    IPC2bits.U1RXIP0 = 0;
    
    
    // Put some data in U1TXREGbits because what the fuck:
//    U1TXREG = 'Z';
    
    U1STA = 0; // Clear the UxSTA register (for tx1 and rx1 only)
    U1STAbits.URXISEL = 0; // Configure when the TX interrupt will fire
    
    // Enable UART for 8-bit data:
    U1MODE = 0; // Clear the UxMode register (for tx1 and rx1 only)
    U1MODEbits.BRGH = 1; // 1 = low speed
    U1MODEbits.UARTEN = 1; // Actually enable the UART module (MUST be done before UTXEN is set)
    
    U1STAbits.UTXEN = 1; // enable transmit
    IEC0bits.U1TXIE = 1; // enable transmit interrupt
    IEC0bits.U1RXIE = 1; // enable receive interrupt
    
    // Clear the flags for both interrupts:
    IFS0bits.U1TXIF = 0; 
    IFS0bits.U1RXIF = 0; 
    
    printf("UART should be working now!\n");
    
}

int putc(int ch, FILE *fd) {
    tx1Buf[0] = ch;
    U1TXREG = ch;
    return 0;
}
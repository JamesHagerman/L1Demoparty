/* This  code will enable serial on a PIC24FJ256DA206
 * RX: RP7
 * TX: RP6
 * Baudrate: 115200
 */
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>
#include "serial.h"

#define	RX_BUF_SIZE	128
#define	TX_BUF_SIZE	128
unsigned char	rx1Buf[RX_BUF_SIZE];
unsigned char	tx1Buf[TX_BUF_SIZE];
unsigned char *U1TXCharPtr;
unsigned char *U1RXCharPtr;
unsigned int rxSize;
unsigned int txSize;
bool dataAvailable = false;

void __attribute__((__interrupt__, no_auto_psv)) _U1RXInterrupt( void ) {

    IFS0bits.U1RXIF = 0; // Clear interrupt flag
    
    //Check for UART receive overrun
    if(U1STAbits.OERR == 1) {
        U1STAbits.OERR = 0;
    } else {
        // No UART receive overrun!
        if(U1STAbits.FERR == 0) { // if no framing error detected...
            // Read out the UART FIFO
            while(U1STAbits.URXDA == 1) {
                rx1Buf[rxSize] = U1RXREG;
                U1TXREG = rx1Buf[rxSize];
                if (rx1Buf[rxSize] == '\r' || rx1Buf[rxSize] == '\n') {
                    dataAvailable = true;
                }
                rxSize++;
            }
//            dataAvailable = true;
            
        } else {
            // UART framming error...
            // grab from U1RXREG;
        }
    }
}

void __attribute__((__interrupt__, no_auto_psv)) _U1TXInterrupt(void) {
    IFS0bits.U1TXIF = 0; // Clear interrupt flag
//    int ch;
//    ch = tx1Buf[0];
    
}

void config_uart(void) {
    // Set R7 as an input. I don't think this is needed for uart.. but let's 
    // just be sure.
    TRISBbits.TRISB7 = 1;
    
    OSCCONbits.IOLOCK = 0;  // unlock the peripheral Control Register Lock
    RPINR18bits.U1RXR = 7;  // Map UART1 RX peripheral to RP7
//    RPINR18bits.U1RXR = 26;  // Map UART1 RX peripheral to RP26 (also, RG7)
    RPOR3bits.RP6R = 3;     // Map RP6 pin to UART1 TX
    OSCCONbits.IOLOCK = 1;  // relock the peripheral Control Register Lock

    // Set baud rate:
    U1BRG = (((FCY)/(4 * 115200UL)) - 1);
    
    // Set interrupt priorities:
    // (Honestly, not sure exactly what this is doing...)
    IPC3bits.U1TXIP2 = 1; //Set Uart TX Interrupt Priority
    IPC3bits.U1TXIP1 = 0;
    IPC3bits.U1TXIP0 = 0;
    IPC2bits.U1RXIP2 = 1; //Set Uart RX Interrupt Priority
    IPC2bits.U1RXIP1 = 0;
    IPC2bits.U1RXIP0 = 0;
    
    U1STA = 0; // Clear the UxSTA register (for tx1 and rx1 only)
    U1STAbits.URXISEL = 0; // Configure when the TX interrupt will fire
    
    // Enable UART for 8-bit data:
    U1MODE = 0; // Clear the UxMode register (for tx1 and rx1 only)
    //U1MODEbits.RTSMD = 1; // RTS pin bit is in simplex mode not flow control mode
    U1MODEbits.BRGH = 1; // 1 = low speed
    U1MODEbits.UARTEN = 1; // Actually enable the UART module (MUST be done before UTXEN is set)
    
    U1STAbits.UTXEN = 1; // enable transmit
    IEC0bits.U1TXIE = 1; // enable transmit interrupt
    IEC0bits.U1RXIE = 1; // enable receive interrupt
    
    // Clear the flags for both interrupts:
    IFS0bits.U1TXIF = 0; 
    IFS0bits.U1RXIF = 0; 
    
    // Configure the buffer pointers:
    U1TXCharPtr = &tx1Buf[0];
    U1RXCharPtr = &tx1Buf[0];
    
    printf("\r\nUART should be working at 115200 baud now!\r\n");
    __delay_ms(100);
    
}

void reset_buffer() {
    rx1Buf[0] = '\0';
    rxSize = 0;
}

// We don't need to override putc like we had to on XC8! Woo!
//int putc(int ch, FILE *fd) {
//    tx1Buf[0] = ch;
//    U1TXREG = ch;
//    return 0;
//}

// But, we DO have to override read() from stdio.h because it just doesn't
// care about '\n':
int __attribute__((__weak__, __section__(".libc"))) 
read(int handle, void *buffer, unsigned int len)
{
    int i; 
    int readChar;
    switch (handle) {
        case 0: // stdout
        case 1: // stdin
        case 2: // stderr
            for (i = len; i; --i) {
                while (!U1STAbits.URXDA); // wait until UART1 rx char ready
                readChar = U1RXREG;
                *(char*)buffer++ = readChar;
                U1TXREG = readChar; // echo readChar back to serial out...
                
                // You may have to change your expected "enter key" values...
                // carriage return = 0x0D = '\r'
                //         newline = 0x0A = '\n'
                if (readChar == 0x0D || readChar == 0x0A) {
                    // These reset the terminal. I'm not sure if we need these.
//                    U1TXREG = '\r';
                    U1TXREG = '\n';
                    break; // break out of the for loop...
                }
            }

            len -= i; // Calculate how many characters we read before breaking
            break;
        default:
            break;
    }
    
    return len;
}

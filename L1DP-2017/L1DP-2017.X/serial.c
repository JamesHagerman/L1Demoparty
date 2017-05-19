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

#define	RX_BUF_SIZE_U1 128
#define	TX_BUF_SIZE_U1 128
unsigned int rxSizeU1;
unsigned int txSizeU1;
unsigned char rxBufU1[RX_BUF_SIZE_U1];
unsigned char txBufU1[TX_BUF_SIZE_U1];
unsigned char *U1TXCharPtr;
unsigned char *U1RXCharPtr;
bool dataAvailableU1 = false;

#define	RX_BUF_SIZE_U2 128
#define	TX_BUF_SIZE_U2 128
unsigned int rxSizeU2;
unsigned int txSizeU2;
unsigned char rxBufU2[RX_BUF_SIZE_U2];
unsigned char txBufU2[TX_BUF_SIZE_U2];
unsigned char *U2TXCharPtr;
unsigned char *U2RXCharPtr;
bool dataAvailableU2 = false;
char c;

void __attribute__((__interrupt__, no_auto_psv)) _U1RXInterrupt( void ) {
    IFS0bits.U1RXIF = 0; // Clear interrupt flag
    
    //Check for UART receive overrun
    if(U1STAbits.OERR == 1) {
        U1STAbits.OERR = 0;
    } else {
        // No UART receive overrun!
        if(U1STAbits.FERR == 0) { // if no framing error detected...
            // Read out the UART FIFO
            while(U1STAbits.URXDA == 1) { // 1 if receive buffer has data, 0 if empty
                rxBufU1[rxSizeU1] = U1RXREG;
                c = rxBufU1[rxSizeU1];

                // TODO: Somehow control ECHO programatically:
                // TODO: THIS IS A MESS. We get the wrong characters echoed all the damn time!
                //       Having to handle all the cleanup in the program is a pain...
                // Only echo stuff we care about (printable characters not space, or newline):
                // We echo escapes (0x1b) just so the terminal will ignore control characers...
                if ((c >= '!' && c <= '~') || c == 0x1b) {
                    U1TXREG = rxBufU1[rxSizeU1];
                }

//                if (rxBufU1[rxSizeU1] == '\r' || rxBufU1[rxSizeU1] == '\n') {
//                    dataAvailableU1 = true;
//                }
                rxSizeU1++;
            }
            dataAvailableU1 = true; // Let someone else handle the buffer contents
        } else {
            // UART framming error...
            // grab from U1RXREG;
        }
    }
}

void __attribute__((__interrupt__, no_auto_psv)) _U1TXInterrupt(void) {
    IFS0bits.U1TXIF = 0; // Clear interrupt flag
//    int ch = txBufU1[0]; // Read the data from the tx1BufU1
}

void __attribute__((__interrupt__, no_auto_psv)) _U2RXInterrupt( void ) {
    IFS1bits.U2RXIF = 0; // Clear interrupt flag

    //Check for UART receive overrun
    if(U2STAbits.OERR == 1) {
        U2STAbits.OERR = 0;
    } else {
        // No UART receive overrun!
        if(U2STAbits.FERR == 0) { // if no framing error detected...
            // Read out the UART FIFO
            while(U2STAbits.URXDA == 1) {
                rxBufU2[rxSizeU2] = U2RXREG;
                U2TXREG = rxBufU2[rxSizeU2];
                if (rxBufU2[rxSizeU2] == '\r' || rxBufU2[rxSizeU2] == '\n') {
                    dataAvailableU2 = true;
                }
                rxSizeU2++;
            }
        } else {
            // UART framming error...
            // grab from U1RXREG;
        }
    }
}

void __attribute__((__interrupt__, no_auto_psv)) _U2TXInterrupt(void) {
    IFS1bits.U2TXIF = 0; // Clear interrupt flag
//    int ch = txBufU2[0]; // Read the data from the tx1Buf
}

// TODO: Get this thing to be able to setup ANY of the UART channels somehow!!
void config_uart(unsigned long baudRate) {
    
    // Make sure our buffers start empty:
    reset_buffer();

    // Configure RX pin:
    // Set R7 as an input. I don't think this is needed for uart.. but let's 
    // just be sure.
    //TRISBBITS rxPinU1 = TRISBbits.TRISB7;
    TRISBbits.TRISB7 = 1;

    OSCCONbits.IOLOCK = 0;  // unlock the peripheral Control Register Lock

    // Configure RX pin:
    RPINR18bits.U1RXR = 7;  // Map UART1 RX peripheral to RP7
//    RPINR18bits.U1RXR = 26;  // Map UART1 RX peripheral to RP26 (also, RG7)

    // Configure TX pin:
    RPOR3bits.RP6R = 3;     // Map RP6 pin to UART1 TX
    OSCCONbits.IOLOCK = 1;  // relock the peripheral Control Register Lock

    // Set baud rate:
    U1BRG = (((FCY)/(4 * baudRate)) - 1);
    
    // Set interrupt priorities:
    // (Honestly, not sure exactly what this is doing...)
    IPC3bits.U1TXIP2 = 1; //Set Uart TX Interrupt Priority
    IPC3bits.U1TXIP1 = 0;
    IPC3bits.U1TXIP0 = 0;
    IPC2bits.U1RXIP2 = 1; //Set Uart RX Interrupt Priority
    IPC2bits.U1RXIP1 = 0;
    IPC2bits.U1RXIP0 = 0;
    
    U1TXREG = 0; // Ensure that we start with an empty TX buffer
    
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
    U1TXCharPtr = &txBufU1[0];
    U1RXCharPtr = &rxBufU1[0];
    
    __delay_ms(100);
    printf("\n\nUART should be working at 115200 baud now!\r\n");
}

void reset_buffer() {
    rxBufU1[0] = '\0';
    rxSizeU1 = 0;
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

// TODO: Build something like this that can handle keyboard input via serial!
//int handleSerialInput() {
//    // My serial handler for the demo's keyboard input:
//    // TODO: Manage some amount of command input. Single char will work for now...
//    int toRet = -1;
//    uint16_t i;
//    if (dataAvailableU1) {
////        printf("Got %i chars of data: %s\r\n", rxSize, rx1Buf);
//        dataAvailableU1 = false;
//
//        for (i = 0; i < rxSizeU1; i++) {
//            char c = rxBufU1[i];
//
//            //handle number chars:
//            if (c >= '0' && c <= '9') {
//                uint16_t numberValue = (uint16_t)c - 0x30;
//                toRet = numberValue;
//            } else if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) {
//                printf("A letter!: '%c'\r\n", c);
//                if (c == 'r') {
//                    printf("Restting frames\r\n");
//                    frames = 0;
//                } else if (c == 'e') {
//                    printf("Toggling CLUT\r\n");
//                    _CLUTEN = story_state.clutState = !story_state.clutState;
//                }
//            } else if (c == '\n' || c == '\r') {
//                //do nothing...
//            } else {
//                printf("That char is not a number or letter: '%c'\r\n", c);
//            }
//        }
//
//        reset_buffer();
//    }
//
//    return toRet;
//}
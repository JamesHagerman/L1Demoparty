/* 
 * File:   tty.h
 * Author: jamis
 *
 * Created on May 9, 2017, 8:07 PM
 */

#include <stdbool.h>

#ifndef TTY_H
#define	TTY_H

#ifdef	__cplusplus
extern "C" {
#endif

typedef enum {
    None = -1,
    UP = 0,
    DOWN,
    LEFT,
    RIGHT,
    TAB,
    SPACE,
    BACKSPACE
} EVENT_TYPE;

extern uint8_t uartInputSize;
extern unsigned char uartInputBuffer[128];
extern bool foundEscChar;
extern bool foundCtrlChar;

void setStringHandlerCallback(int (*callback)(unsigned char *inputBuffer, uint16_t inputSize));
void setInputHandlerCallback(void (*callback)(EVENT_TYPE inputData));
int handleSerialInput();

#ifdef	__cplusplus
}
#endif

#endif	/* TTY_H */


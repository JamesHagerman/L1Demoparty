#include <stdbool.h>
#include <xc.h>
#include <libpic30.h>

#include "resolution_management.h"
#include "drawing_helpers.h"
#include "text.h"
#include "serial.h"
#include "music.h"

#include "demo_management.h"

#include "hardware.h"

bool ledState = true;
char jumperMessage[] = "Please jump R28 to\nto Ground...";

// Demo hardware helpers:
void checkForPauseJumper() {
    bool jumperOn = ! PORTBbits.RB4; // high = not connected. low = jumper!
    if (jumperOn ) {
        story_state.storyPlaying = true;
    } else {
        story_state.storyPlaying = false;
    }
}

void checkForTrackerJumper() {
    bool jumperOn = ! PORTBbits.RB5; // high = not connected. low = jumper!
    if (jumperOn) {
        story_state.storyPlaying = true;
    } else {
        story_state.storyPlaying = false;
    }
}

void setupHardware() {
    ANSB = 0x0000;
    ANSC = 0x0000;
    ANSD = 0x0000;
    ANSF = 0x0000;
    ANSG = 0x0000;
    TRISB = 0x0000;

    // Set pins r18 and r28 operation state:
    TRISBbits.TRISB4 = 1; // B4 = r28 = input, For Pausing the demo
//    TRISBbits.TRISB5 = 0; // B5 = r18 = output, For LED Output or something
    TRISBbits.TRISB5 = 1; // B5 = r18 = output, For Enabling Tracker

    // Set initial value on those pins:
    LATBbits.LATB5 = 0;

    // Setup interrupts:

    _VMRGNIE = 1; // enable the vertical sync interrupt
    _HMRGNIE = 1; // enable the horizontal sync interrupt
    _VMRGNIF = 0; // clear the vertical sync interrupt flag
    _HMRGNIF = 0; // clear the horizontal sync interrupt flag

    _GFX1IE = 1; // enable the master GFX interrupt
    _GFX1IF = 0; // clear the master GFX Interrupt flag
    _GFX1IP = 0b111; // Set the master GFX interrupt priority to the highest possible

    // Call out to some other .c files to init some other functionality:
    config_uart(115200UL);
    config_graphics();
    config_chr(); // config the character GPU
    config_audio();


    // Validate that both buffers start empty:
#ifdef DOUBLE_BUFFERED
    rcc_setdest(GFXDisplayBuffer[0]);
    blank_background();
    rcc_setdest(GFXDisplayBuffer[1]);
    blank_background();
#endif

}

//void statusLED() {
//    // Blink some pins:
//    ledState = !ledState;
//    PORTBbits.RB5 = ledState;
//    __delay_ms(100);
//}
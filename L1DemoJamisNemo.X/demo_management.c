#include "demo_management.h"

uint16_t frames = 0;
bool ledState = true;

void setupHardware() {
    ANSB = 0x0000;
    ANSC = 0x0000;
    ANSD = 0x0000;
    ANSF = 0x0000;
    ANSG = 0x0000;
    TRISB = 0x0000;
    
    // Set pins r18 and r28 as outputs:
    TRISBbits.TRISB4 = 0;
    TRISBbits.TRISB5 = 0;
    // Set initial value on those pins:
    PORTBbits.RB4 = 0;
    PORTBbits.RB5 = 0;

        // Setup interrupts:
#ifdef DOUBLE_BUFFERED
    _VMRGNIF = 0;
//    _HMRGNIF = 0;
//    _HMRGNIE = 1;
    _VMRGNIE = 1;
    _GFX1IE = 1;
#else
    _VMRGNIF = 0;
    _VMRGNIE = 1;
    _GFX1IE = 1;
#endif
    
    // Call out to some other .c files to init some other functionality:
    config_uart(115200UL);
    config_graphics();
    config_chr(); // config the character GPU
    config_timer();
    
   
    // Validate that both buffers start empty:
#ifdef DOUBLE_BUFFERED
    rcc_setdest(GFXDisplayBuffer[0]);
    blank_background();
    rcc_setdest(GFXDisplayBuffer[1]);
    blank_background();
#endif
    
}

void frameStart() {
#ifdef	DOUBLE_BUFFERED
    swapWorkAreas();
#else
//    blank_background(); // Clearing the buffer here means tearing for some reason
#endif
}

void frameEnd() {
    // Cleanup the right most column:
    rcc_color(0);
    rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); // Weird things occur if the right column isn't 0

#ifdef	DOUBLE_BUFFERED
    waitForBufferFlip();
#else
    waitForVSync();
#endif
}

void manageFrameReset() {
    if (frames > 2500) {
        frames = 0;
    }
}



void statusLED() {
    // Blink some pins:
    ledState = !ledState;
    PORTBbits.RB4 = ledState;
    PORTBbits.RB5 = ledState;
    __delay_ms(100);
}
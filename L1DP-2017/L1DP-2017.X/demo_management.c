#include "demo_management.h"

#define MAX_SCENE_LENGTH 2500 // in frames
//SCENE scene;
STORY_STATE story_state;
uint16_t frames = 0;
bool ledState = true;

// StoryState management methods:
void addScene(SCENE newScene) {
    if (story_state.sceneCount+1 <= MAX_SCENES) {
        story_state.sceneCount++;
        story_state.scenes[story_state.sceneCount] = newScene;
    } else {
        printf("Oops! Trying to add too many scenes!\n");
    }
}
void switchScene(uint8_t nextScene) {
    if (nextScene > story_state.sceneCount - 1) {
        printf("%u is an invalid scene... \n", nextScene);
        
        // Reset after we reach the end of the last scene:
        frames = 0;
        story_state.currentScene = 0;
//        return;
    }
    if (nextScene != story_state.currentScene) {
        story_state.currentScene = nextScene;
    } else {
        printf("Reiniting scene %u\n", nextScene);
    }
    
    // Set the starting time so we know when to switch to the next scene:
    story_state.scenes[nextScene].sceneStartFrame = frames;
    
    // Init this scene by envoking its init function pointer:
    (*story_state.scenes[nextScene].sceneInit)(); 
}

void drawCurrentScene() {
    uint8_t id = story_state.currentScene;
    (*story_state.scenes[id].sceneDraw)(frames); // Draw this scene
}

void checkSceneFinished() {
    // This will check the sceneStartFrame against the frames counter and switch
    // to the next scene if it's time:
    uint8_t id = story_state.currentScene;
    if (frames > story_state.scenes[id].sceneStartFrame + story_state.scenes[id].sceneLength) {
        id++;
        printf("Switching to scene: %i\n", id);
        switchScene(id);
    }

    // Make sure we reset our frame count to zero after some time. We probably
    // don't want very long scenes. And if we do, we'll just stop calling the
    // checkSceneFinished() method in some other, more stable way.
    if (frames > MAX_SCENE_LENGTH) {
        printf("Scene ran too long. Resetting frames counter to 0...\n");
        frames = 0;
    }
}

// Scene management methods:
void drawFPS(char* sprintBuffer) {
    // TODO: Print the fps to the UART cleanly without borking our term...
    sprintf(sprintBuffer, "f:%i s:%i", frames,
            story_state.scenes[story_state.currentScene].sceneStartFrame +
            story_state.scenes[story_state.currentScene].sceneLength);
    chr_print(sprintBuffer, 0, VER_RES-(21*1)); // x, y are bounded in chr_print
}

// Demo hardware helpers:
void checkForJumper() {
    bool jumperOn = ! PORTBbits.RB4; // high = not connected. low = jumper!
    if (jumperOn ) {
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
    TRISBbits.TRISB4 = 1; // B4 = r28 = input
    TRISBbits.TRISB5 = 0; // B5 = r18 = output
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

void statusLED() {
    // Blink some pins:
    ledState = !ledState;
    PORTBbits.RB5 = ledState;
    __delay_ms(100);
}
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#include "resolution_management.h"
#include "text.h"

#include "demo_management.h"

#define MAX_SCENE_LENGTH 2500 // in frames
//SCENE scene;
STORY_STATE story_state;
uint16_t frames = 0;
char fpsTextBuffer[20]; // Buffer for any text rendering sprintf() calls

// StoryState management methods:
void addScene(SCENE newScene) {
    if (story_state.sceneCount+1 <= MAX_SCENES) {
        story_state.scenes[story_state.sceneCount] = newScene;
        story_state.sceneCount++;
    } else {
        printf("Oops! Trying to add too many scenes!\n");
    }
}
void switchScene(uint8_t nextScene) {
    if (nextScene >= story_state.sceneCount) {
        // TODO: Handle this more gracefully...
        printf("Tried to switch to an invalid scene. Restarting demo...\n\n");
        
        // Reset after we reach the end of the last scene:
        nextScene = 0;
        frames = 0; // We're starting over, so reset frames to 0
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
void drawFPS() {
    // TODO: Make this ACTUALLY calculate FPS!!!
    // TODO: Print the fps to the UART cleanly without borking our term...
    sprintf(fpsTextBuffer, "f:%i s:%i", frames,
            story_state.scenes[story_state.currentScene].sceneStartFrame +
            story_state.scenes[story_state.currentScene].sceneLength);
    chr_print(fpsTextBuffer, 0, VER_RES-(21*1)); // x, y are bounded in chr_print
}


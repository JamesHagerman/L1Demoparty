#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#include "resolution_management.h"
#include "text.h"
#include "hardware.h"
#include "music.h"
#include "demo_management.h"

#define MAX_SCENE_LENGTH 2500 // in frames
//SCENE scene;
STORY_STATE story_state;
uint16_t frames = 0;
char fpsTextBuffer[20]; // Buffer for any text rendering sprintf() calls

int16_t trackerSceneId = -1;

// StoryState management methods:
void addScene(SCENE newScene) {
    if (story_state.sceneCount+1 <= MAX_SCENES) {
        story_state.scenes[story_state.sceneCount] = newScene;
        story_state.sceneCount++;

        if (newScene.constantScene) {
            trackerSceneId = story_state.sceneCount - 1;
        }
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
    if (story_state.scenes[id].constantScene && forceTrackerScene) {

    } else {
        // Switch to the next scene either when we have hit the end of the scene
        // OR if we're on the trackerUI scene (we only get to this if block if
        // the jumper is on the board anyways)
        if (frames > story_state.scenes[id].sceneStartFrame + story_state.scenes[id].sceneLength ||
               story_state.currentScene == trackerSceneId ) {

            // Only switch scenes when song loops, regardless of scene length
            if (idx >= songLength-1) {
                id++;

                // Skip the "constant" scenes (in this case, trackerUI:
                // TODO: Manage all of this "Dual mode" stuff in a better way. Maybe having
                // a "Demo mode" and a "Tool mode" that can be switched between using a
                // jumper is better than trying to hook everything into the scene graph
                if (story_state.scenes[id].constantScene) {
                    id++;
                }

                printf("Switching to scene: %i\n", id);
                switchScene(id);
            }
        }
    }
    

    // Make sure we reset our frame count to zero after some time. We probably
    // don't want very long scenes. And if we do, we'll just stop calling the
    // checkSceneFinished() method in some other, more stable way.
    if (frames > MAX_SCENE_LENGTH) {
        printf("Scene ran too long. Resetting frames counter to 0...\n");
        frames = 0;
    }
}

void emitInputStringToScene(unsigned char *inputBuffer, uint16_t inputSize) {
    uint8_t id = story_state.currentScene;
    (*story_state.scenes[id].handleStringInput)(inputBuffer, inputSize);
}

void emitInputToScene(EVENT_TYPE inputData) {
    uint8_t id = story_state.currentScene;
    (*story_state.scenes[id].handleInput)(inputData); // Draw this scene
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


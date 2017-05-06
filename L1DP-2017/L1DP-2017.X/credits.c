#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <math.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "resolution_management.h"
#include "sprites.h"
#include "demo_management.h"
#include "credits.h"

// Start Credits scene:
SCENE creditsScene = {0, 400, &initCredits, &drawCredits, &audioCredits, "Credits"};
static char creditsText[] = "\n\n\n\n\n\n\n\n\n\n\n" \
            "Thank you Arko\n" \
            "and everyone at NSL\n" \
            "that helps make\n" \
            "LayerOne happen!\n" \
            "\n" \
            "Never enough time.\n" \
            "Was it good for u?";
void initCredits() {
    int sceneId = story_state.currentScene;
    printf("Initing scene %i: %s\n", sceneId, story_state.scenes[sceneId].sceneName);
    _CLUTEN = 0; // enable the CLUT for this scene
}
void drawCredits(uint16_t frame) {
    drawSprite((HOR_RES-32)/2, 4*PIX_H, 8, 0);
    chr_print(creditsText, 0, 0); // x, y are bounded in chr_print
}
unsigned char audioCredits(unsigned char t) {
    return t & t>>8;
}
// End of Credits scene
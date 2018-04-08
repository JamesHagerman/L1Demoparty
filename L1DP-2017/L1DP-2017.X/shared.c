
#include "shared.h"

char titleText[] = "Non-traditional";
char authorText[] = "by:jamisnemo";
char textBuffer[20];
int currentSpriteIndex = 0;
int currentSpriteOffset = 1;

uint8_t clutStart = 5;
uint8_t color = 0;
uint8_t colorScrollSpeed = 0;
uint16_t i, j, sizeW, sizeH, vertOffset;
uint16_t screenCenterY;
uint8_t newValue;
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
//#include <float.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "particles.h"

#include "color_management.h"
#include "resolution_management.h"

int numPart=0;
struct Particle
{
    uint16_t size;
    uint16_t posx;
    uint16_t posy;
    uint16_t speedx;
    uint16_t speedy;
    uint16_t color;
};

__eds__ struct Particle p[MAX_PARTICLES];

void addParticle()
{
    p[numPart].size = 1;//+(rand() % 5);
    p[numPart].posx = rand() % (HOR_RES-2);//rand()%5;//1+(rand() % (HOR_RES-10));
    p[numPart].posy = 1+(rand() % (VER_RES-7));
    p[numPart].speedx = 1+(rand() % 2);
    p[numPart].speedy = 0;//1+(rand() % 5);
    p[numPart].color = rand();
    numPart++;
}
/* 
 * File:   particles.h
 * Author: jamis
 *
 * Created on May 17, 2015, 7:17 PM
 */

#ifndef PARTICLES_H
#define	PARTICLES_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MAX_PARTICLES 30

extern int numPart;
struct Particle
{
    uint16_t size;
    uint16_t posx;
    uint16_t posy;
    uint16_t speedx;
    uint16_t speedy;
    uint16_t color;
};

extern __eds__ struct Particle p[MAX_PARTICLES];

void addParticle();

#ifdef	__cplusplus
}
#endif

#endif	/* PARTICLES_H */


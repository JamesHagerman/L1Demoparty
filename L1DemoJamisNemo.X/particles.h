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
struct Particle;

void addParticle();

#ifdef	__cplusplus
}
#endif

#endif	/* PARTICLES_H */


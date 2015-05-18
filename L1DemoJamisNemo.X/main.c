
// Layerone Demoscene Board - C Example Code
// Built on MPLABX using X16 compiler (MPLAB IDE compatible)
//
// Demo written by: Datagram and Hotdogs
// Fucked with by: jamisnemo
//
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
//#include <float.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "fonts.h"
#include "music.h"
#include "sprites.h"
//#include "screens.h"
//#include "testgfx.h"

// jamis
#include "color_management.h"
#include "resolution_management.h"
//#include "serial.c"



_CONFIG1(FWDTEN_OFF & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2(POSCMOD_HS & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2)
_CONFIG3(ALTPMP_ALTPMPEN & SOSCSEL_EC)



void config_chr(void) {
    while(_CMDFUL) continue;
    G1CMDL = 0xFFFF;
    G1CMDH = CHR_FGCOLOR;
    Nop();

    while(_CMDFUL) continue;
    G1CMDL = 0;
    G1CMDH = CHR_BGCOLOR;
    Nop();

    while(_CMDFUL) continue;
    G1CMDL = (uint16_t)(FontStart) & 0xFFFF;
    G1CMDH = CHR_FONTBASE;
    Nop();

    while(_CMDFUL) continue;
    G1CMDL = 0;
    G1CMDH = CHR_TXTAREASTART;
    Nop();

    while(_CMDFUL) continue;
    G1CMDL = (HOR_RES & 0xF)<<12 | VER_RES;
    G1CMDH = CHR_TXTAREAEND | (HOR_RES >>4);
    Nop();
}

int maxCharHeight = ((int)VER_RES)-8;
void chr_print(char *c, uint16_t x, uint16_t y) {
//    G1W1ADRL = (unsigned long)(GFXDisplayBuffer);
//    G1W1ADRH = (unsigned long)(GFXDisplayBuffer);

    if (y > maxCharHeight) {
        y = maxCharHeight;
    }
    int maxCharWidth = ((int)HOR_RES) - (6 * strlen(c)) - 1; // dumb math. bad at \n's
    if (x > maxCharWidth) {
        x = maxCharWidth;
    }

    while(_CMDFUL) continue;
    G1CMDL = x<<12 | y;
    G1CMDH = CHR_PRINTPOS | (x>>4); // CHR_PRINTPOS = 0x5A00
    Nop();

    while(*c != NULL) {
	while(_CMDFUL) continue;
	G1CMDL = *c;
	G1CMDH = CHR_PRINTCHAR;
	Nop();

	c++;
    }
}

void rcc_color(unsigned int color) {
        while(_CMDFUL) continue;
	G1CMDL = color;
	G1CMDH = RCC_COLOR;
        Nop();
}

void rcc_setdest(__eds__ uint8_t *buf) {
	while(!_CMDMPT) continue; // Wait for GPU to finish drawing
	G1W1ADRL = (unsigned long)(buf);
	G1W1ADRH = (unsigned long)(buf);
	G1W2ADRL = (unsigned long)(buf);
	G1W2ADRH = (unsigned long)(buf);
}

void gpu_setfb(__eds__ uint8_t *buf) {
	G1DPADRL = (unsigned long)(buf);
	G1DPADRH = (unsigned long)(buf);
}

void rcc_draw(uint16_t x, uint16_t y, uint16_t w, uint16_t h) {

	// destination
	while(_CMDFUL) continue;
	G1CMDL = x + y*HOR_RES;
	G1CMDH = RCC_DESTADDR | (x + y*HOR_RES)>>16;
	Nop();

	// size
	while(_CMDFUL) continue;
	G1CMDL = (w<<12) | h;
	G1CMDH = RCC_RECTSIZE | (w>>4);
	Nop();

	// go!
	while(_CMDFUL) continue;
	G1CMDL = 0xC<<3;
	G1CMDH = RCC_STARTCOPY;
	Nop();
}

static inline void fast_pixel(unsigned long ax, unsigned long ay) {
	//ax += (ay << 9) + (ay << 7);
	ax += ay*HOR_RES;
	G1CMDL = ax;
	G1CMDH = RCC_DESTADDR | ax>>16;

	G1CMDL = 0x1006; // This needs to be changed for non 80x
	G1CMDH = RCC_RECTSIZE;

	while(_CMDFUL) continue;
	G1CMDL = 0x60;
	G1CMDH = RCC_STARTCOPY;
	Nop();
}

void blank_background() {
	//rcc_color(0xff);
	rcc_color(0x0);
	rcc_draw(0, 0, HOR_RES-1, VER_RES); // fixes weird last horizontal line issue
}

void ipu_decomp(__eds__ uint8_t *src, __eds__ uint8_t *dst, unsigned long size) {
	G1W1ADRL = (unsigned long)(src);
	G1W1ADRH = (unsigned long)(src);
	G1W2ADRL = (unsigned long)(dst);
	G1W2ADRH = (unsigned long)(dst);

	// source addr
	while(_CMDFUL) continue;
	G1CMDL = 0;
	G1CMDH = IPU_SRCADDR;
	Nop();

	// dest addr
	while(_CMDFUL) continue;
	G1CMDL = 0;
	G1CMDH = IPU_DESTADDR;
	Nop();

	// dest addr
	while(_CMDFUL) continue;
	G1CMDL = size & 0xFFFF;
	G1CMDH = IPU_DECOMPRESS	| (size >> 16);
	Nop();
}

void drawBorder(uint16_t c) {
	// screen border
	rcc_color(c);
	rcc_draw(0,0, 1, VER_RES); // left
	rcc_draw(HOR_RES-2,0,1,VER_RES); // right
	rcc_draw(0,0, HOR_RES-2, PIX_H); // top
	rcc_draw(0,VER_RES-PIX_H,HOR_RES-2,PIX_H); // bottom
}

void cleanup(void) { // TODO: custom colors
	// Clean right column
	//rcc_color(0xe0); // neat effect
	//rcc_color(0xff); // white
	rcc_color(0x00);
	rcc_draw(HOR_RES-1,0, 1,VER_RES);
}

//volatile int fb_ready = 0;
//void __attribute__((interrupt, auto_psv))_GFX1Interrupt(void) {
//	static int lines = 0;
//	static int syncs = 0;
//	static int next_fb = 1;
//	if(_VMRGNIF) { /* on a vertical sync, flip buffers if it's ready */
//		lines = 0;
//		syncs++;
//		if(fb_ready) {
//			gpu_setfb(GFXDisplayBuffer[next_fb]);
//			next_fb = !next_fb;
//		}
//		//Nop();Nop();
//		fb_ready = 0;
//		_VMRGNIF = 0;
//	} else if(_HMRGNIF) { /* on each horizontal sync, ...? */
//		lines++;
//		_HMRGNIF = 0;
//	}
//	_GFX1IF = 0;
//}

struct Sprite {
	 uint8_t width;  // Width (in pixels)
	 uint8_t height; // Height (in pixels)
	 uint8_t bitres; // Bits per Pixel
 	 uint8_t trans;  // Transparency
 	 uint8_t rotate; // Rotation, 0: none, 1: 90 cw, 2: 180, 3: 90 ccw
__prog__ uint8_t *data;  // Pointer to sprite pixel data
};

struct Sprite s[MAX_SPRITES];

void loadAllSprites(void) {
	uint16_t id, off;
	off = 0;

	for (id=0; id < MAX_SPRITES; id++) {
		s[id].width  =  SpriteMap[off + SPR_OFF_WIDTH];
		s[id].height =  SpriteMap[off + SPR_OFF_HEIGHT];
		s[id].bitres =  SpriteMap[off + SPR_OFF_BITRES];
		s[id].trans  =  SpriteMap[off + SPR_OFF_TRANS];
		s[id].rotate =  SpriteMap[off + SPR_OFF_ROTATE];
		s[id].data   = &SpriteMap[off + SPR_OFF_DATA];

		off += s[id].width * s[id].height + SPR_HEAD;
	}
}

void static inline drawSprite(uint16_t x, uint16_t y, uint8_t id, uint8_t rotation) {

	unsigned int w,h;
	uint16_t x1,y1;
	uint8_t color;

	if (x >= HOR_RES-1 || y >= VER_RES-1 || x <= 0|| y <= 0) return;

	for (h=0; h < s[id].height; h++) {
		for (w=0; w < s[id].width; w++) {
			color = s[id].data[w + s[id].width*h];
			// don't draw if it matches transparency color
			if (color == s[id].trans) continue;
			rcc_color(color);
//                        rcc_color(0xFC); // 8bit yellow == 0b111 111 00
			//rcc_color(rand()); //tv screen effect

			switch(rotation) {
				//  00 deg      0,0 1,0 2,0 ... 0,1
				//  90 deg CCW  7,0 7,1 7,2 ... 6,0
				// 180 deg      7,7 6,7 5,7 ... 7,6
				//  90 deg CW   0,7 0,6 0,5 ... 1,6
				case 0: // 0 degree
					x1 = x+w;
					y1 = y + (h<<2) + (h<<1);//y+(PIX_H*h);
					if (x1 >= HOR_RES-2) continue; //br
					if (y1 >= VER_RES-PIX_H) return; //ret
					fast_pixel(x1, y1);
					break;
				case 1: // 90 degree CW
					x1 = x+(s[id].width-h-1);
					y1 = y+(PIX_H*(w));
					if (x1 >= HOR_RES-1 || x1 <= 0) continue;
					if (y1 >= VER_RES-PIX_H || y1 <= 0) continue;
					fast_pixel(x1, y1);
					break;
				case 2: // 180 degree CW
					x1 = x+(s[id].width-w-1);
					y1 = y+(PIX_H*(s[id].height-h-1));
					if (x1 >= HOR_RES-1) continue;
					if (y1 >= VER_RES-PIX_H) continue;
					fast_pixel(x1, y1);
					break;
				case 3: // 90 degree CCW
					break;
				default:
					break;
			}
		}
	}
	//Nop();
}

int static inline nrange(double a, double b) {
	return (int)((a >= b) ? a-b : b-a);
}

static unsigned int shade = 0;

void drawSpriteRotation(uint16_t x, uint16_t y, uint8_t id, float rotation) {
	int x1,y1,x2,y2;
	unsigned int w,h, real_x, real_y;
	uint8_t color;
	float r_s,r_c;

	r_s = sin(rotation);
	r_c = cos(rotation);

	for (h=0; h < s[id].height; h++) {
		for (w=0; w < s[id].width; w++) {
			color = s[id].data[w + s[id].width*h];
			if (color == s[id].trans) continue;
			rcc_color(color+shade);

			x1 = -(s[id].width/2-w); // negative for origin centering
			y1 = (s[id].height/2-h);
			x2 = x1*r_c - y1*r_s;
			y2 = x1*r_s + y1*r_c;

			real_x = x+nrange(x1,x2);
			real_y = y + PIX_H*nrange(y1,y2);

			if (real_x >= HOR_RES-1 || real_x <= 0) continue;
			if (real_y >= VER_RES-PIX_H || real_y <= 0) continue; // PIX_H for screen bordered setup
			//rcc_draw(real_x, real_y, 1, PIX_H);
			fast_pixel(real_x, real_y);
		}
	}
}

float radians(uint16_t angle) {
	return ((angle*3.14159)/180.0);
}

int realtoint(float oldval, float oldmin, float oldmax, float newmin, float newmax) {
	return (int)((((oldval - oldmin) * (newmax - newmin)) / (oldmax - oldmin)) + newmin);
}

void drawLineS(float x1, float y1, float x2, float y2) {
	return;
}

float angle, x[8], y[8], z[8], rx[8], ry[8], rz[8], scrx[8], scry[8];

void line (float x1, float y1, float x2, float y2) {
        unsigned int i;
        double hl=fabs(x2-x1), vl=fabs(y2-y1), length=(hl>vl)?hl:vl;
        float deltax=(x2-x1)/(float)length, deltay=(y2-y1)/(float)length;
        for (i=0; i<(int)length; i++) {
                unsigned long x=(int)(x1+=deltax), y=(int)(y1+=deltay);
                if ((x<HOR_RES)&&(y<VER_RES)) {
                        //rcc_color(rand());
                        rcc_color(0x3);
                        //rcc_draw(x,y, PIX_W,PIX_H);
                        // TODO: fix y displacement
			fast_pixel(x,y+6);// + i*PIX_H);
                        }
                }
}

void render (float xa, float ya, float za) {
        int i;
        float mat[4][4];            // Determine rotation matrix
        float xdeg=xa*3.1416f/180, ydeg=ya*3.1416f/180, zdeg=za*3.1416f/180;
        float sx=(float)sin(xdeg), sy=(float)sin(ydeg), sz=(float)sin(zdeg);
        float cx=(float)cos(xdeg), cy=(float)cos(ydeg), cz=(float)cos(zdeg);
        mat[0][0]=cx*cz+sx*sy*sz, mat[1][0]=-cx*sz+cz*sx*sy, mat[2][0]=cy*sx;
        mat[0][1]=cy*sz, mat[1][1]=cy*cz, mat[2][1]=-sy;
        mat[0][2]=-cz*sx+cx*sy*sz, mat[1][2]=sx*sz+cx*cz*sy, mat[2][2]=cx*cy;
        for (i=0; i<8; i++) {
                rx[i]=x[i]*mat[0][0]+y[i]*mat[1][0]+z[i]*mat[2][0];
                ry[i]=x[i]*mat[0][1]+y[i]*mat[1][1]+z[i]*mat[2][1];
                rz[i]=x[i]*mat[0][2]+y[i]*mat[1][2]+z[i]*mat[2][2]+100;
                scrx[i]=(rx[i]*10)/rz[i]+(HOR_RES/2), scry[i]=(ry[i]*60)/rz[i]+(VER_RES/2);
        }
        for (i=0; i<4; i++) {
                line (scrx[i], scry[i], scrx[i+4], scry[i+4]);
                line (scrx[i], scry[i], scrx[(i+1)%4], scry[(i+1)%4]);
                line (scrx[i+4], scry[i+4], scrx[((i+1)%4)+4], scry[((i+1)%4)+4]);
        }
}

/* In-A-Gadda-Da-Vida Tab
D[--------3-2-------\7-6-5------[
A[---5-5-------3-5----------3---[
*/

unsigned short song[] = {
	NOTES_D5,
	0,
	NOTES_D5,
	0,
	NOTES_F5,
	NOTES_E5,
	NOTES_C5,
	NOTES_D5,
	0,
	NOTES_A5,
	0,
	NOTES_Ab5,
	0,
	NOTES_G5,
	0,
	NOTES_C5,
	};

void config_timer() {
	PR1 = 0;
	_T1IP = 5;	// set interrupt priority
	_TON  = 1;	// turn on the timer
	_T1IF = 0;	// reset interrupt flag
	_T1IE = 1;	// turn on the timer1 interrupt

	/* set up timer for stepping through song */
	PR2 = 0x3d09; // reaaal sloooow
	_T2IP = 6;
	_T2IF = 0;
	/* no nice macros for T2CON :( */
	T2CON = 0b1000000000110000; // set T2 on with max prescaler (256)
	_T2IE = 1;
}
//_T1Interrupt() is the T1 interrupt service routine (ISR).
void __attribute__((__interrupt__)) _T1Interrupt(void);
void __attribute__((__interrupt__, auto_psv)) _T1Interrupt(void)
{
	static unsigned char idx = 0;
	PORTB = sinetable[idx] << 8;
	idx += 1;
	_T1IF = 0;
}

//_T2Interrupt() is the T2 interrupt service routine (ISR).
void __attribute__((__interrupt__)) _T2Interrupt(void);
void __attribute__((__interrupt__, auto_psv)) _T2Interrupt(void)
{
	static unsigned short idx = 0;
	PR1 = song[idx];

	idx++;
	if(idx == sizeof(song) / sizeof(song[0])) /* loop it! */
		idx = 0;
	_T2IF = 0;
}

void verBlind(void) {
	// VERTICAL BLINDS
	// blind = rate of drop
	static uint16_t blind=0;
	rcc_color(0);
	rcc_draw(0, 0, HOR_RES-1, blind);
	rcc_draw(0, VER_RES-blind, HOR_RES-1, blind);
	if ( blind < 100) {
		blind+=2;
	}
}
/*
// FIRE SINE WAVE
balls = 0;
for (fire_x = -3.14159; fire_x <= 3.14159; fire_x+=0.1) {
	fire_y = amp*sin(fire_x*fire_b);

	if ( realtoint(fire_x, -3.14159, 3.14159, 0, HOR_RES-1) > HOR_RES-1) break;
	drawSprite(realtoint(fire_x, -3.14159, 3.14159, 0, HOR_RES-1), realtoint(fire_y, -1,1,0,480-(s[2].height*PIX_H)), 2, rand()%3);
	balls++;
}

if (max_fire > 100 || max_fire == -100) {
	fire_s *= -1;
}

if (amp >= 3.0 || amp < 0.5) {
	amp_s *= -1;
}

amp += amp_s;
max_fire += fire_s;
*/

#define MAX_PARTICLES 30

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

// TODO this shit is dirty
void omar(void);
//__prog__ uint8_t *pSnoop1 = SnoopOne;
//__prog__ uint8_t *pSnoop2 = SnoopTwo;
//__prog__ uint8_t *pSnoop3 = SnoopThree;
//__prog__ uint8_t *pSnoop4 = SnoopFour;
//__prog__ uint8_t *pSnoop5 = SnoopFive;
//__prog__ uint8_t *pSnoop6 = SnoopSix;





char message[20];
uint8_t lol=0;


uint16_t frames = 0;
int main(void) {

	ANSB = 0x0000;
	ANSC = 0x0000;
	ANSD = 0x0000;
	ANSF = 0x0000;
	ANSG = 0x0000;
	TRISB = 0x0000;

	config_graphics();
	config_chr();
	config_timer();

        // Grabbed from bldewolfs repo:
        blank_background();
	while(!_CMDMPT) continue; // Wait for GPU to finish drawing
//	ipu_decomp(gfx_compressed, GFXDisplayBuffer, GFX_BUFFER_SIZE);
//	while(!_CMDMPT) continue; // Wait for GPU to finish drawing

        char buf[20];
//	chr_print("Hello\nHello\nHello\nHello\n", 0, 0);
//	sprintf(buf, "%x\n", G1IPU);
//	chr_print(buf, 20, 0);
//	rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); /* Weird things occur if the right column isn't 0 */

        int x = 0;
        int y = 0;
        int xDir = 1;
        int yDir = 1;
        int w = 1;
        int h = 4;
        int xSpeed = w;
        int ySpeed = h;
        int xMax = ((int)HOR_RES)-w-1; //((int)HOR_RES)-8;
        int yMax = ((int)VER_RES)-h; //((int)VER_RES)-6-1;
        int xOld, yOld;

        uint16_t color = 0;
        uint8_t r, g, b, hue, sat = 255, val = 255;
        while (1) {
            frames += 1;

//            if (frames > 90) {
//                frames = 80;
//            }

//            color =  frames;
//            color = get8bppRGBColor(0,0,frames);
//            color = get16bppRGBColor(frames,0,0);

            hsvtorgb(&r,&g,&b,frames,sat,val);
//            color = get8bppRGBColor(r,g,b);
            color = get16bppRGBColor(r,g,b);

//            blank_background();
            drawBorder(color);
            xOld = x;
            yOld = y;
            x += xDir * xSpeed;
            y += yDir * ySpeed;

            if (x > xMax) {
                x = xMax;
                xDir *= -1;
            }
            if (y > yMax) {
                y = yMax;
                yDir *= -1;
            }
            if (x <= 0) {
                x = 0;
                xDir *= -1;
            }
            if (y <= 0) {
                y = 0;
                yDir *= -1;
            }
//            rcc_color(c++);
//            rcc_draw(100, 20, 20, 200);
//            rcc_draw(0, 0, HOR_RES, VER_RES);
//            rcc_draw(638, 0, 1, 200);
//            sprintf(buf, "%i, %i %i, %i", x, y, xDir, yDir);
//            chr_print(buf, ((int)HOR_RES)/2, ((int)VER_RES)/2);

            // Draw debug:
//            sprintf(buf, "Low: %lx", (unsigned long)GFXDisplayBuffer & 0xFFFFFF ); //((unsigned long)(GFXDisplayBuffer) & 0xFFFF)
//            chr_print(buf, ((int)HOR_RES)/2, ((int)VER_RES)/2);
//
//            sprintf(buf, "High: %lu", (unsigned long)GFXDisplayBuffer >> 16 & 0xFF );
//            chr_print(buf, ((int)HOR_RES)/2, 8+((int)VER_RES)/2);

//            sprintf(buf, "rgb:%x, %x, %x", r, g, b );
//            chr_print(buf, 0, ((int)VER_RES)/2);
//
//            sprintf(buf, "color: %x", frames );
//            chr_print(buf, 0, 8+((int)VER_RES)/2);

            
//            uint16_t mapped = map(frames, 0, 10, 0, 100);
//            sprintf(buf, "%i->%i", frames, mapped );
//            chr_print(buf, 0, 8+((int)VER_RES)/2);


            // Draw a ball (actually, just a letter)
//            sprintf(buf, "O");
//            chr_print(buf, x, y); // x, y are bounded in chr_print

            // Draw a pixel:
//            rcc_color(0); // delete last pixel position
//            rcc_draw(xOld, yOld, w, h);
            rcc_color(color); // draw new position
            rcc_draw(x, y, w, h);

            rcc_color(0);
            rcc_draw((int)HOR_RES-1, 0, 1, (int)VER_RES); /* Weird things occur if the right column isn't 0 */
//            __delay_ms(50);

	}

        // ORIGINAL:
//	// clear buffers
//	rcc_setdest(GFXDisplayBuffer[0]);
//	blank_background();
//	rcc_setdest(GFXDisplayBuffer[1]);
//	blank_background();
//
//	_VMRGNIF = 0;
//	_HMRGNIF = 0;
//	_HMRGNIE = 1;
//	_VMRGNIE = 1;
//	_GFX1IE = 1;
//
//	//loadSprite(0);
//	loadAllSprites();
//
//	int d;
//	for(d = 0; d < MAX_PARTICLES; d++)
//		addParticle();
//
//
//	double fire_x, fire_y;
//	uint16_t balls=0;
//	signed int max_fire=0;
//	uint16_t fire_s = 10;
//	float fire_b = 1.0;
//	// y = offset + A*sin(x*2*pi*B)
//
//	float amp = 0.5;
//	float amp_s = 0.05;
//	uint16_t angle=0;
//
//	uint8_t aa = 1;
//	int next_fb = 1;
//	int box_color = 0;
//	while (1) {
//
//            printf("derp\n\r");
//            __delay_ms(1000);
//		rcc_setdest(GFXDisplayBuffer[next_fb]);
//
//		blank_background();
//		//omar();
//
//		int c;
//		for(c = 0; c < numPart; c++)
//		{
//			if (p[c].posx + p[c].size >= HOR_RES-1) {
//				p[c].posx = rand()%5;
//				p[c].posy = 1+(rand()%(VER_RES-6));
//				p[c].color = rand() & 0xff;
//			}
//			p[c].posx += p[c].speedx;
//                }
//                for(c = 0; c < numPart; c++)
//                {
//                        rcc_color(p[c].color);
//                        fast_pixel(p[c].posx, p[c].posy);
//                }
//
//
//		drawSprite(HOR_RES/2-s[6].width/2, VER_RES/2-(s[6].height*PIX_H), 6,0);
//		drawSprite(HOR_RES/2-s[7].width/2, VER_RES/2, 7,0);
//
//		drawSprite(HOR_RES/2-s[7].width/2 - s[2].width - 1, VER_RES/2 + PIX_H*(s[2].width/2), 2+aa, 0);
//		drawSprite(HOR_RES/2+s[7].width/2 + 2, VER_RES/2 + PIX_H*(s[3].width/2), 2+!aa, 0);
//		if ( frames%4 == 0) {
//			aa = !aa;
//		}
//
//		rcc_color(0);
//
//		/*if (frames < 200) {
//                    omar();
//                    //TODO: text fix
//                    rcc_color(0x92);
//                    rcc_draw(0, 210, 24, 42);
//		} else if (frames >= 200 && frames < 400) {
//                    verBlind();
//		} else if (frames >= 400) {
//                    drawSprite( 10, 60, 4, 0); // TROGDOOOOOR
//		}*/
//
////		rcc_color(0x3);
////		render(angle, 360-angle, 0);
////		angle+=5;
//
//                // My drawing:
//                int myColor = 0;
//                int h = 0;
//                for (h = 0; h < HOR_RES; h++ ) {
//                    myColor = h;
//
//                    rcc_color(myColor); // 8bit yellow == 0b111 111 00 = 0xFC
//                    fast_pixel(h, 5);
//
//                    myColor = h*2;
//                    rcc_color(myColor); // 8bit yellow == 0b111 111 00
//                    fast_pixel(5, h);
//
//                }
//
//
//
//		// CIRCLE DRAWING
//		int x, y;
//		int ox,oy, radius;
//		radius = 3;
//		ox = HOR_RES/2;
//		oy = VER_RES/2;
//		for(y=-radius; y<=radius; y++) {
//                    for(x=-radius; x<=radius; x++) {
//                        rcc_color(1+(rand()%3));
//                        if(x*x+y*y <= radius*radius + radius*0.8f) fast_pixel(ox+x, oy+y*PIX_H);
//                    }
//                }
//
//
//		drawBorder(0x92);
//		cleanup();
//
//		while(!_CMDMPT) continue; // Wait for GPU to finish drawing
//		gpu_setfb(GFXDisplayBuffer[next_fb]);
//		_VMRGNIF = 0;
//		while(!_VMRGNIF) continue; // wait for vsync
//		next_fb = !next_fb;
//		frames++;
//	}

	return 0;
}

//__prog__ uint8_t *pIndeed = OhIndeed;

//void omar(void) {
//	uint16_t width, height, w, h;
//	width = 80;
//	height = 80;
//	uint8_t col;
//	uint8_t off;
//	off = lol%6;
//
//	for (h=0; h < height; h++) {
//		for (w=0; w < width; w++) {
//			if (off == 0) {
//				col = pSnoop1[w + h*width];
//			} else if (off == 1) {
//				col = pSnoop2[w + h*width];
//			} else if (off == 2) {
//				col = pSnoop3[w + h*width];
//			} else if (off == 3) {
//				col = pSnoop4[w + h*width];
//			} else if (off == 4){
//				col = pSnoop5[w + h*width];
//			} else if (off == 5){
//				col = pSnoop6[w + h*width];
//			}
//			rcc_color(col);
//			rcc_draw(w,h*6,1,6);
//
//		}
//	}
//	lol++;
//}

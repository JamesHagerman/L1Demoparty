/* For close to A4: 16Mhz / (440Hz*256 samples) =~ 0x8E */
/* did all the math for the rest of the freqs found at:
   http://www.phy.mtu.edu/~suits/notefreqs.html
   */

#ifndef MUSIC_H
#define	MUSIC_H

#ifdef	__cplusplus
extern "C" {
#endif


#define C0	0xeee
#define Db0	0xe18
#define D0	0xd4d
#define Eb0	0xc8d
#define E0	0xbd9
#define F0	0xb2f
#define Gb0	0xa8f
#define G0	0x9f7
#define Ab0	0x967
#define A0	0x8e0
#define Bb0	0x860
#define B0	0x7e8
#define C1	0x777
#define Db1	0x70b
#define D1	0x6a6
#define Eb1	0x647
#define E1	0x5ec
#define F1	0x597
#define Gb1	0x547
#define G1	0x4fb
#define Ab1	0x4b4
#define A1	0x470
#define Bb1	0x430
#define B1	0x3f4
#define C2	0x3bb
#define Db2	0x385
#define D2	0x353
#define Eb2	0x323
#define E2	0x2f6
#define F2	0x2cb
#define Gb2	0x2a3
#define G2	0x27d
#define Ab2	0x259
#define A2	0x238
#define Bb2	0x218
#define B2	0x1fa
#define C3	0x1dd
#define Db3	0x1c2
#define D3	0x1a9
#define Eb3	0x191
#define E3	0x17b
#define F3	0x165
#define Gb3	0x151
#define G3	0x13e
#define Ab3	0x12c
#define A3	0x11c
#define Bb3	0x10c
#define B3	0xfd
#define C4	0xee
#define Db4	0xe1
#define D4	0xd4
#define Eb4	0xc8
#define E4	0xbd
#define F4	0xb2
#define Gb4	0xa8
#define G4	0x9f
#define Ab4	0x96
#define A4	0x8e
#define Bb4	0x86
#define B4	0x7e
#define C5	0x77
#define Db5	0x70
#define D5	0x6a
#define Eb5	0x64
#define E5	0x5e
#define F5	0x59
#define Gb5	0x54
#define G5	0x4f
#define Ab5	0x4b
#define A5	0x47
#define Bb5	0x43
#define B5	0x3f
#define C6	0x3b
#define Db6	0x38
#define D6	0x35
#define Eb6	0x32
#define E6	0x2f
#define F6	0x2c
#define Gb6	0x2a
#define G6	0x27
#define Ab6	0x25
#define A6	0x23
#define Bb6	0x21
#define B6	0x1f
#define C7	0x1d
#define Db7	0x1c
#define D7	0x1a
#define Eb7	0x19
#define E7	0x17
#define F7	0x16
#define Gb7	0x15
#define G7	0x13
#define Ab7	0x12
#define A7	0x11
#define Bb7	0x10
#define B7	0x0f
#define C8	0x0e
#define Db8	0x0e
#define D8	0x0d
#define Eb8	0x0c
#define E8	0x0b
#define F8	0x0b
#define Gb8	0x0a
#define G8	0x09
#define Ab8	0x09
#define A8	0x08
#define Bb8	0x08
#define B8	0x07

void config_audio();

// Song itself:
extern __prog__ const uint32_t song[] __attribute__((space(prog)));

// Big wave tables:
//extern __prog__ const unsigned char sinetable[] __attribute__((space(prog)));
//extern __prog__ const unsigned char zigzagtable[] __attribute__((space(prog)));
//extern __prog__ const unsigned char saw[] __attribute__((space(prog)));
//extern __prog__ const unsigned char pulse50[] __attribute__((space(prog)));
//extern __prog__ const unsigned char pulse75[] __attribute__((space(prog)));
//extern __prog__ const unsigned char noise[] __attribute__((space(prog)));

extern const uint8_t sinetable[];
extern const unsigned char zigzagtable[];
extern const unsigned char saw[];
extern const unsigned char pulse50[];
extern const unsigned char pulse75[];
extern const unsigned char noise[];

#ifdef	__cplusplus
}
#endif

#endif	/* MUSIC_H */

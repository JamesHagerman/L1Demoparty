/* For close to A4: 16Mhz / (440Hz*256 samples) =~ 0x8E */
/* did all the math for the rest of the freqs found at:
   http://www.phy.mtu.edu/~suits/notefreqs.html
   */

#ifndef MUSIC_H
#define	MUSIC_H

#ifdef	__cplusplus
extern "C" {
#endif


#define NOTES_C0	0xeee
#define NOTES_Db0	0xe18
#define NOTES_D0	0xd4d
#define NOTES_Eb0	0xc8d
#define NOTES_E0	0xbd9
#define NOTES_F0	0xb2f
#define NOTES_Gb0	0xa8f
#define NOTES_G0	0x9f7
#define NOTES_Ab0	0x967
#define NOTES_A0	0x8e0
#define NOTES_Bb0	0x860
#define NOTES_B0	0x7e8
#define NOTES_C1	0x777
#define NOTES_Db1	0x70b
#define NOTES_D1	0x6a6
#define NOTES_Eb1	0x647
#define NOTES_E1	0x5ec
#define NOTES_F1	0x597
#define NOTES_Gb1	0x547
#define NOTES_G1	0x4fb
#define NOTES_Ab1	0x4b4
#define NOTES_A1	0x470
#define NOTES_Bb1	0x430
#define NOTES_B1	0x3f4
#define NOTES_C2	0x3bb
#define NOTES_Db2	0x385
#define NOTES_D2	0x353
#define NOTES_Eb2	0x323
#define NOTES_E2	0x2f6
#define NOTES_F2	0x2cb
#define NOTES_Gb2	0x2a3
#define NOTES_G2	0x27d
#define NOTES_Ab2	0x259
#define NOTES_A2	0x238
#define NOTES_Bb2	0x218
#define NOTES_B2	0x1fa
#define NOTES_C3	0x1dd
#define NOTES_Db3	0x1c2
#define NOTES_D3	0x1a9
#define NOTES_Eb3	0x191
#define NOTES_E3	0x17b
#define NOTES_F3	0x165
#define NOTES_Gb3	0x151
#define NOTES_G3	0x13e
#define NOTES_Ab3	0x12c
#define NOTES_A3	0x11c
#define NOTES_Bb3	0x10c
#define NOTES_B3	0xfd
#define NOTES_C4	0xee
#define NOTES_Db4	0xe1
#define NOTES_D4	0xd4
#define NOTES_Eb4	0xc8
#define NOTES_E4	0xbd
#define NOTES_F4	0xb2
#define NOTES_Gb4	0xa8
#define NOTES_G4	0x9f
#define NOTES_Ab4	0x96
#define NOTES_A4	0x8e
#define NOTES_Bb4	0x86
#define NOTES_B4	0x7e
#define NOTES_C5	0x77
#define NOTES_Db5	0x70
#define NOTES_D5	0x6a
#define NOTES_Eb5	0x64
#define NOTES_E5	0x5e
#define NOTES_F5	0x59
#define NOTES_Gb5	0x54
#define NOTES_G5	0x4f
#define NOTES_Ab5	0x4b
#define NOTES_A5	0x47
#define NOTES_Bb5	0x43
#define NOTES_B5	0x3f
#define NOTES_C6	0x3b
#define NOTES_Db6	0x38
#define NOTES_D6	0x35
#define NOTES_Eb6	0x32
#define NOTES_E6	0x2f
#define NOTES_F6	0x2c
#define NOTES_Gb6	0x2a
#define NOTES_G6	0x27
#define NOTES_Ab6	0x25
#define NOTES_A6	0x23
#define NOTES_Bb6	0x21
#define NOTES_B6	0x1f
#define NOTES_C7	0x1d
#define NOTES_Db7	0x1c
#define NOTES_D7	0x1a
#define NOTES_Eb7	0x19
#define NOTES_E7	0x17
#define NOTES_F7	0x16
#define NOTES_Gb7	0x15
#define NOTES_G7	0x13
#define NOTES_Ab7	0x12
#define NOTES_A7	0x11
#define NOTES_Bb7	0x10
#define NOTES_B7	0x0f
#define NOTES_C8	0x0e
#define NOTES_Db8	0x0e
#define NOTES_D8	0x0d
#define NOTES_Eb8	0x0c
#define NOTES_E8	0x0b
#define NOTES_F8	0x0b
#define NOTES_Gb8	0x0a
#define NOTES_G8	0x09
#define NOTES_Ab8	0x09
#define NOTES_A8	0x08
#define NOTES_Bb8	0x08
#define NOTES_B8	0x07

extern unsigned short song[];

void config_timer();


// Big sine table:
extern const unsigned char sinetable[];
extern const unsigned char zigzagtable[];

#ifdef	__cplusplus
}
#endif

#endif	/* MUSIC_H */

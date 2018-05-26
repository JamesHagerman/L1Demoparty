/* For close to A4: 16Mhz / (440Hz*256 samples) =~ 0x8E */
/* did all the math for the rest of the freqs found at:
   http://www.phy.mtu.edu/~suits/notefreqs.html
   */

#include <stdbool.h>

#ifndef MUSIC_H
#define	MUSIC_H

#ifdef	__cplusplus
extern "C" {
#endif


#define C0	12
#define Db0	13
#define D0	14
#define Eb0	15
#define E0	16
#define F0	17
#define Gb0	18
#define G0	19
#define Ab0	20
#define A0	21
#define Bb0	22
#define B0	23
#define C1	24
#define Db1	25
#define D1	26
#define Eb1	27
#define E1	28
#define F1	29
#define Gb1	30
#define G1	31
#define Ab1	32
#define A1	33
#define Bb1	34
#define B1	35
#define C2	36
#define Db2	37
#define D2	38
#define Eb2	39
#define E2	40
#define F2	41
#define Gb2	42
#define G2	43
#define Ab2	44
#define A2	45
#define Bb2	46
#define B2	47
#define C3	48
#define Db3	49
#define D3	50
#define Eb3	51
#define E3	52
#define F3	53
#define Gb3	54
#define G3	55
#define Ab3	56
#define A3	57
#define Bb3	58
#define B3	59
#define C4	60
#define Db4	61
#define D4	62
#define Eb4	63
#define E4	64
#define F4	65
#define Gb4	66
#define G4	67
#define Ab4	68
#define A4	69
#define Bb4	70
#define B4	71
#define C5	72
#define Db5	73
#define D5	74
#define Eb5	75
#define E5	76
#define F5	77
#define Gb5	78
#define G5	79
#define Ab5	80
#define A5	81
#define Bb5	82
#define B5	83
#define C6	84
#define Db6	85
#define D6	86
#define Eb6	87
#define E6	88
#define F6	89
#define Gb6	90
#define G6	91
#define Ab6	92
#define A6	93
#define Bb6	94
#define B6	95
#define C7	96
#define Db7	97
#define D7	98
#define Eb7	99
#define E7	100
#define F7	101
#define Gb7	102
#define G7	103
#define Ab7	104
#define A7	105
#define Bb7	106
#define B7	107
#define C8	108
#define Db8	109
#define D8	110
#define Eb8	111
#define E8	112
#define F8	113
#define Gb8	114
#define G8	115
#define Ab8	116
#define A8	117
#define Bb8	118
#define B8	119

extern int songLength;
extern bool isPlaying;
extern unsigned short idx;
extern uint8_t bpm;
extern uint8_t noteDivision;

extern int maxSongLength;
extern uint8_t maxBPM;
extern uint8_t maxNoteDivision;

extern bool fuckIt;

typedef enum  {
//    LOW = 11025, // 11025
//    MEDIUM = 22050, // 22050
    HIGH = 44100, // 44100
//    MAX = 16000000 // 16MHz
} SAMPLE_RATES;

typedef struct {
    uint32_t accumulator;
    uint32_t phase;
    uint8_t value;
    const uint8_t *wavetable;
    uint8_t wavetableIndex;
    uint8_t amplitude;
    uint8_t mute;
} NCO;

extern uint8_t chanCount;
extern NCO chan1Osc;
extern NCO chan2Osc;
extern NCO chan3Osc;
extern NCO chan4Osc;

extern float startingFreq; //

void rewindSong();
void togglePlay();
void stop();
void play();

// Synth stuff
extern uint8_t osc1CurrentNote;
extern uint8_t osc2CurrentNote;
extern uint8_t osc3CurrentNote;
extern uint8_t osc4CurrentNote;
extern uint8_t nextToPlay;
extern bool lastCrow;
void allowSynth();
void allNoteOff();
void noteOn(uint8_t note);
void noteOff(uint8_t note);
// end synth stuff

void config_audio();
void setSampleRate(SAMPLE_RATES newRate);
void setBPM(uint8_t newBpm, uint8_t noteDivision);
void increaseBPM();
void decreaseBPM();
void increaseDiv();
void decreaseDiv();

void setSongLength(uint8_t newLength);
void increaseSongLength();
void decreaseSongLength();

uint8_t* findAmpChan(uint8_t chan);
uint8_t* findNoteChan(uint8_t chan);
void changeAmplitude(uint8_t chan, uint8_t step, uint8_t amp);
void changeNote(uint8_t chan, uint8_t step, uint8_t note, uint8_t octave, uint8_t amp);
void muteChannel(uint8_t chan);
void unmuteChannel(uint8_t chan);
void printSongForSave();

void setWavetable(NCO *n, uint8_t wavetableIndex);
NCO* findChanNCO(uint8_t chan);
void increaseWavetableIndex(uint8_t chan);
void decreaseWavetableIndex(uint8_t chan);
char* getChanWavetableName(uint8_t chan);

void ncoSetFreq(NCO *n, float freq);
void ncoSetPhase(NCO *n, uint32_t phase, uint8_t bend);
void ncoSetNote(NCO *n, uint8_t note, uint8_t amplitude, uint8_t bend);

void ncoInit(NCO *n, float freq, uint8_t wavetableIndex, uint8_t muteLevel);
void ncoStep(NCO *n);

extern uint8_t chan1Tracker[128];
extern uint8_t chan2Tracker[128];
extern uint8_t chan3Tracker[128];
extern uint8_t chan4Tracker[128];

// Note lookup:
extern char *notes[];

// Song itself:
extern uint8_t chan1[128];
extern uint8_t chan1Amp[128];
extern uint8_t chan2[128];
extern uint8_t chan2Amp[128];
extern uint8_t chan3[128];
extern uint8_t chan3Amp[128];
extern uint8_t chan4[128];
extern uint8_t chan4Amp[128];
//extern __prog__ const uint32_t song[] __attribute__((space(prog)));

// NCO Phase table:
extern uint32_t *currentPhaseTable;
//extern uint32_t phaseTableMAX[];
extern uint32_t phaseTable44100[];
//extern uint32_t phaseTable22050[];
//extern uint32_t phaseTable11025[];

// Big wave tables:
extern const uint8_t waveTableCount;
extern const uint8_t *wavetables[];
extern char *wavetableNames[];

// TODO: Leave these in program space, then copy them into ram
//extern __prog__ const uint8_t sinetable[] __attribute__((space(prog)));
//extern __prog__ const uint8_t zigzagtable[] __attribute__((space(prog)));
//extern __prog__ const uint8_t saw[] __attribute__((space(prog)));
//extern __prog__ const uint8_t pulse50[] __attribute__((space(prog)));
//extern __prog__ const uint8_t pulse75[] __attribute__((space(prog)));
//extern __prog__ const uint8_t noise[] __attribute__((space(prog)));

extern const uint8_t sinetable[];
extern const uint8_t zigzagtable[];
extern const uint8_t saw[];
extern const uint8_t pulse50[];
extern const uint8_t pulse75[];
extern const uint8_t noise[];
extern const uint8_t drum[];

#ifdef	__cplusplus
}
#endif

#endif	/* MUSIC_H */

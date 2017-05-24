/*
 * Some of this code was derived from someone smarter than I:
 * http://blog.thelonepole.com/2011/07/numerically-controlled-oscillators/
 *
 * I needed this to understand the NCO code though:
 * https://www.youtube.com/watch?v=YDC5zaEZGhM
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include "system.h" // declares FCY
#include <libpic30.h>

#include "music.h"

#include "color_management.h"
#include "resolution_management.h"
#include "demo_management.h"

#define AUDIO_SAMPLE_RATE MEDIUM

int songLength = 32;
bool isPlaying = false;
unsigned short idx = 0; // song position
uint8_t bpm = 160;
uint8_t noteDivision = 8;

int maxSongLength = 128;
uint8_t maxBPM = 250;
uint8_t maxNoteDivision = 32;

bool fuckIt = false;

uint8_t chanCount = 4;
NCO chan1Osc;
NCO chan2Osc;
NCO chan3Osc;
NCO chan4Osc;

uint32_t *currentPhaseTable = phaseTable22050;
float startingFreq = AUDIO_SAMPLE_RATE;

uint8_t chan1Tracker[128];
uint8_t chan2Tracker[128];
uint8_t chan3Tracker[128];
uint8_t chan4Tracker[128];

//one value in each array adds 2 bytes to the overall build
//9 channel arrays * 128 steps * 2 bytes per step
//That's 2304 bytes for 128 steps
//That's 16 bars of music...
//unless I do something special like split the playback up per channel
//
// Step one should be combine the 4 Amplitude tracks. Bitwise, of course
// That'll take us down to:
// 6*128*2 = 1536 bytes for 128 steps
// Brings the total to about 86608 instead of 87376 That shaves off 768 bytes
//
// I have 98304 maximum bytes in DATA memory... 87548 words in program memory...
// Lower 30k of DATA is "non eds" and the upper 60k is EDS internal to the chip.
//
// In MPLABX, both Program memory and Data memory are viewable. Data memory is
// actually called "File Registers" though. I'm not sure if this includes EDS.
//
// Reading from PROGRAM memory is easy with the PSV (Program space visibility)
// flag __psv_

// But writing to Program memory, is difficult. I'd have to burn flash to update
// the values. Probably not a good idea unless I want to save the song on the
// device itself.
//
// But wait! What if 128 bars is fine for the demo, then add an "upload" method
// to just load it into RAM?
//
// Maybe I can setup a heap and dynamically build my song in there from "stems"
// That way, I wouldn't really be using program memory at all. Or at least,
// any part that repeats could reduce my DATA load... Then I'd have to switch
// between playing from heap, and playing from user-modifiable arrays...
//
// Probably too much work for a demo but it might get us there. Now I need to
// figure out how much memory load this thing has WHILE RUNNING
//
// Shorten or remove some wave tables... But I still need to consider a drum table
// Bassline can repeat or at least be shorter
// Drums could probably also be shortened... use overdrive for symbol?
// Maybe just simpler music.
//
// If nothing else, it adds complexity to the lookup to keep track of four
// different counters, one per track.
//
// Or I could mutate the fonts. But that's going to be hard. Shortening them
// might work. Remove characters I don't need.
//
// Upside is I have a LOT of space for sprites!!

uint8_t chan1[128] = {
    C4,Db4,E4,F4,G4,Ab4,G4,F4,E4,C4,G4,G4,G4,G4,G4,G4,D5,C5,G4,C5,D5,C5,G4,C5,D5,C1,E6,C6,G5,G5,C6,C7
};

uint8_t chan1Amp[128] = {
    4,3,2,1,2,3,2,1,2,2,1,1,2,3,4,5,8,8,8,8,8,8,8,8,8,8,2,2,2,2,2,2
};

uint8_t chan2[128] = {
    C4,C4,C4,C4,C4,C4,C4,C4,Bb3,Bb3,Bb3,Bb3,Bb3,Bb3,Bb3,G4,G4,G4,G4,G4,Ab4,Ab4,Ab4,Ab4,F4,F4,F4,E4,E4,E4,Db4,C4
};
uint8_t chan2Amp[128] = {
    8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,4,3,2,2,2,2,2,2,2,2,2,2,2,2,2
};

uint8_t chan3[128] = {
    C5,C5,C5,C5,F5,F5,F5,G5,F5,E5,C5,C4,C3,C2,C3,C2,C3,C2,F4,C4,F4,C4,F4,C4,F4,G4,Ab4,Ab4,G4,G4,F4,E4
};
uint8_t chan3Amp[128] = {
    2,8,2,2,2,8,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
};

uint8_t chan4[128] = {
     C2,C1,Gb8,C3,C0,C2,Gb8,D5,C2,C1,Gb8,D5,C0,C2,Gb8,D5,C2,C1,Gb8,C0,C0,C2,Gb8,D5,C2,C1,Gb8,D5,D5,C2,Gb8,D5
};
uint8_t chan4Amp[128] = {
     1,1,2,8,8,1,2,8,1,1,2,8,8,1,2,8,1,1,1,8,8,1,2,8,1,1,2,8,8,2,2,8
};

// TODO: Get this working
// Setting up some tied notes:
//               not tied     tied
// Channel 1:      1            2
// Channel 2:      4            8
// Channel 3:      16           32
// Channel 4:      64           128
//uint8_t chanTie[128] = {
//    21,  22, 21,  0,  0, 21,  0, 21,
//    0, 21,  0,  0, 21,  0,  0, 21,
//    0,  0, 21,  0,  0, 21,
//};

//__prog__ const uint32_t song[] __attribute__((space(prog), section("SONG"))) = {
////    69
//    0, 1, 2, 3,
//    4, 5, 6, 7,
//    8, 9, 10, 11,
//    12, 13, 14, 15,
//    16, 17, 18, 19,
//    20, 21, 22, 23,
//    24, 25, 26, 27,
//    28, 29, 30, 31,
//    32, 33, 34, 35,
//    36, 37, 38, 39,
//    40, 41, 42, 43,
//    44, 45, 46, 47,
//    48, 49, 50, 51,
//    52, 53, 54, 55,
//    56, 57, 58, 59,
//    60, 61, 62, 63,
//    64, 65, 66, 67,
//    68, 69, 70, 71,
//    72, 73, 74, 75,
//    76, 77, 78, 79,
//    80, 81, 82, 83,
//    84, 85, 86, 87,
//    88, 89, 90, 91,
//    92, 93, 94, 95,
//    96, 97, 98, 99,
//    100, 101, 102, 103,
//    104, 105, 106, 107,
//    108, 109, 110, 111,
//    112, 113, 114, 115,
//    116, 117, 118, 119,
//    120, 121, 122, 123,
//    124, 125, 126, 127
//};

#define PLAY_DEBUG_SONG false

// This interrupt is for stepping through the song:
// _T2Interrupt() is the T2 interrupt service routine (ISR).
void __attribute__((__interrupt__)) _T2Interrupt(void);
void __attribute__((__interrupt__, auto_psv)) _T2Interrupt(void)
{
//    static unsigned short idx = 0;

    // TODO: INTERESTING! Read off the end of the buffer for "music"...

#if PLAY_DEBUG_SONG
    uint8_t currentMidiNote = song[idx];
    ncoSetNote(&chan1Osc, currentMidiNote, 0, 0);
#else
    uint8_t currentMidiNote = chan1[idx];
    uint8_t currentMidiAmp = chan1Amp[idx];
    ncoSetNote(&chan1Osc, currentMidiNote, currentMidiAmp, 0);

    currentMidiNote = chan2[idx];
    currentMidiAmp = chan2Amp[idx];
    ncoSetNote(&chan2Osc, currentMidiNote, currentMidiAmp, 0);

    currentMidiNote = chan3[idx];
    currentMidiAmp = chan3Amp[idx];
    ncoSetNote(&chan3Osc, currentMidiNote, currentMidiAmp, 0);

    currentMidiNote = chan4[idx];
    currentMidiAmp = chan4Amp[idx];
    ncoSetNote(&chan4Osc, currentMidiNote, currentMidiAmp, 0);
#endif
    
    idx++;

#if PLAY_DEBUG_SONG
    if(idx == sizeof(song) / sizeof(song[0])) {
        idx = 0;
    }
#else
    // For chan1[] and it's friends
    if (!fuckIt) {
        if(idx >= songLength) {
            idx = 0;
        }
    }
    
#endif
    _T2IF = 0;
}

// This is the interrupt for stepping through the wave table:
// _T1Interrupt() is the T1 interrupt service routine (ISR).
void __attribute__((__interrupt__)) _T1Interrupt(void);
void __attribute__((__interrupt__, auto_psv)) _T1Interrupt(void)
{
    unsigned short sample=0;

    ncoStep(&chan1Osc);
    ncoStep(&chan2Osc);
    ncoStep(&chan3Osc);
    ncoStep(&chan4Osc);

    // Divide the values by the number of channels just to be sure we have
    // enough headroom when they're all full scale peak to peak:
    sample  = chan1Osc.value >> chan1Osc.amplitude;
    sample += chan2Osc.value >> chan2Osc.amplitude;
    sample += chan3Osc.value >> chan3Osc.amplitude;
    sample += chan4Osc.value >> chan4Osc.amplitude;

    // Spit the mixed value to the audio port:
    PORTB=(sample<<8); // shift is to get to the right pins

    _T1IF = 0;
}

void rewindSong() {
    printf("Rewinding song...\n");
    idx = 0;
}

void togglePlay() {
    if (isPlaying) {
        stop();
    } else {
        play();
    }
}

void stop() {
    if (isPlaying) {
        printf("\rStopping song...\n");
        isPlaying = false;
        T2CONbits.TON = 0; // turn on the timer for playback
        _TON  = 0;	// turn on the timer for DSP
    }
}

void play() {
    if (!isPlaying) {
        printf("\rPlaying song...\n");
        isPlaying = true;
        T2CONbits.TON = 1; // turn on the timer for playback
        _TON  = 1;	// turn on the timer for DSP
    }
}

void config_audio() {

    // LOL:
    fuckIt = false;

    // Setup NCO for DDS:
    // TODO: Build these in a more sane way (so we can switch freq/phase any time)
    ncoInit(&chan1Osc, startingFreq, 1);
    ncoInit(&chan2Osc, startingFreq, 4);
    ncoInit(&chan3Osc, startingFreq, 2);
    ncoInit(&chan4Osc, startingFreq, 6);

//    "sine", // 0
//    "zzag", // 1
//    "saw",  // 2
//    "p50",  // 3
//    "p75",  // 4
//    "nse",  // 5
//    "drm"   // 6

    // Set up timer for stepping through song:
    //
    // We need to figure out how to calculate the tempo here.
    // currently at about 120 or 121 bpm: 0.5Hz
    // But that's with quarter notes so: 2Hz
    // 0x3d09 = 15625
    // prescale is set to 1:256
    //
    // First, calculate BPM in Hertz for quarter notes:
    // (BPM/60*NoteDivisions)
    // (120/60/4) = 0.5Hz
    //
    // Then use the BPM in Hertz to calculate the PR2 value:
    // 1/( BPM in Hertz/(16MHz/256) )
    //
    // So, for 120 bpm with quarter notes (2Hz) we get the following:
    // 1/(8/(16000000/256)) = 15625
    //
    // Complete formula from BPM with Note Divisions:
    // 1/( (60*NoteDivision/BPM) /16MHz/256)

//    PR2 = (uint16_t) 1/(bpm*noteDivision/(float)60/4/62550); // 31250 62550
    setBPM(bpm, 8);

//    PR2 = 0x3d09; // slower: 0x3d09 faster: 0xf0
    /* no nice macros for T2CON :( */
//    T2CON = 0b0000000000110000; // set T2 on with max prescaler (256)
    T2CONbits.TCKPS = 0b11; // 2 bit: 0b00 = 1:1, 0b01 = 1:8, 0b10 = 1:64, 0b11 = 1:256
    _T2IP = 6; // interrupt priority
    _T2IF = 0; // reset flag
    _T2IE = 1; // enable the timer2 interrupt
//    T2CONbits.TON = 1; // turn on the timer

    // Setup the timer to step through the wavetable:
    // Try to get this to be 44.1kHz (period of 22675.737 ns)
    //
    // Use internal clock (TCS register): This is FOSC/2 (see note on next line)
    // Then the prescaler (TCKPS) will divide that clock rate by some amount
    // And when the counter counts to some value (PR1) or clock cycles, it fires the interrupt
    //
    // So, we need to figure out how fast the thing increments without prescale:
    //  T = 1/f (T is period in seconds, f is frequency)
    //  1/16MHz = 62.5 ns (how much time it takes to clock the counter)
    //  1/44.1kHz = 22675.737 ns (our target)
    // That gets us to:
    //  22675.737/62.5 = 362.811792 cycles we need to count to for the interupt.
    //
    // The whole formula is:
    // ((1/44.1kHz)/(1/16MHz)) = value for PR1 (rounded, because integer)

//#if AUDIO_SAMPLE_RATE == 44100
//    PR1 = 362; // 44100: 362.811792
//#elif AUDIO_SAMPLE_RATE == 22050
//    PR1 = 725; // 22050: 725.623582766
//#elif AUDIO_SAMPLE_RATE == 11025
//    PR1 = 1451; // 11025: 1451.24716553288
//#endif

    setSampleRate(MEDIUM); // 22050

    _TCS = 0; // Use internal clock (Fosc/2)
    _TCKPS = 0b00; // prescale. 0b00 = 1:1, 0b01 = 1:8, 0b10 = 1:64, 0b11 = 1:256
    _T1IP = 5;	// set interrupt priority
    _T1IF = 0;	// reset interrupt flag
    _T1IE = 1;	// enable the timer1 interrupt
//    _TON  = 1;	// turn on the timer

    // We won't start playing until the demo is started
//    play();
}

void setSampleRate(SAMPLE_RATES newRate) {
    switch (newRate) {
//        case LOW:
//            // TODO: THIS IS BROKEN RIGHT NOW!!!
//            currentPhaseTable = phaseTable11025;
//            PR1 = 1451; // 11025: 1451.24716553288
//            break;
        case MEDIUM:
        default:
            currentPhaseTable = phaseTable22050;
            PR1 = 725; // 22050: 725.623582766
            break;
//        case HIGH:
//        default:
//            currentPhaseTable = phaseTable44100;
//            PR1 = 362; // 44100: 362.811792
//            break;
    }
}

void setBPM(uint8_t newBpm, uint8_t newNoteDivision) {
    bpm = newBpm;
    // noteDivision = 4; // quarter notes
    // noteDivision = 8; // 1/8th notes
    // noteDivision = 16; // 1/16th notes
    noteDivision = newNoteDivision;
    PR2 = (uint16_t) 1/(newBpm*noteDivision/(float)60/4/(FCY/256));
}

void increaseBPM() {
    if (bpm+1 <= maxBPM) {
        setBPM(bpm + 1, noteDivision);
    }
}
void decreaseBPM() {
    if (bpm-1 >= 60) {
        setBPM(bpm - 1, noteDivision);
    }
}
void increaseDiv() {
    if (noteDivision+1 <= maxNoteDivision) {
        setBPM(bpm, noteDivision + 1);
    }
}
void decreaseDiv() {
    if (noteDivision-1 > 0) {
        setBPM(bpm, noteDivision - 1);
    }
}

void setSongLength(uint8_t newLength) {
    songLength = newLength;
}
void increaseSongLength() {
    if (songLength+1 <= maxSongLength) {
        setSongLength(songLength+1);
    }
}
void decreaseSongLength() {
    if (songLength-1 > 0) {
        setSongLength(songLength-1);
    }
}

uint8_t* findAmpChan(uint8_t chan) {
    uint8_t *ampChanToChange = NULL;
    switch (chan) {
        case 0:
            ampChanToChange = chan1Amp;
            break;
        case 1:
            ampChanToChange = chan2Amp;
            break;
        case 2:
            ampChanToChange = chan3Amp;
            break;
        case 3:
            ampChanToChange = chan4Amp;
            break;
        default:
            printf("\rI... I don't have that channel!!\n");
            break;
    }
    return ampChanToChange;
}

uint8_t* findNoteChan(uint8_t chan) {
    uint8_t *chanToChange = NULL;
    switch (chan) {
        case 0:
            chanToChange = chan1;
            break;
        case 1:
            chanToChange = chan2;
            break;
        case 2:
            chanToChange = chan3;
            break;
        case 3:
            chanToChange = chan4;
            break;
        default:
            printf("\rI... I don't have that channel!!\n");
            break;
    }
    return chanToChange;
}

void changeAmplitude(uint8_t chan, uint8_t step, uint8_t amp) {
    uint8_t *ampChanToChange = findAmpChan(chan);
    ampChanToChange[step] = amp;
}

void changeNote(uint8_t chan, uint8_t step, uint8_t note, uint8_t octave, uint8_t amp) {
    uint8_t *chanToChange = findNoteChan(chan);
    uint8_t *ampChanToChange = findAmpChan(chan);
    printf("CHANGING NOTE!, %u: %u\n", note, octave);
    // Set new note and octave value at selected step:
    chanToChange[step] = note+(12*octave);
    ampChanToChange[step] = amp;
}

void printSongForSave() {
    uint8_t noteValue = 0;
    uint8_t *noteChan = NULL;
    uint8_t *ampChan = NULL;

    printf("\nTrying to print song to terminal to... \"save\" it!\n");
    printf("Note: you may want to do this a few times. Terminal output is iffy and might drop stuff.\n\n");

    // iterators:
    uint8_t channelToPrint;
    uint8_t stepToPrint;
    for (channelToPrint = 0; channelToPrint < chanCount; channelToPrint++) {
        printf("\n\nPrinting channel %i:\n", channelToPrint+1);
        noteChan = findNoteChan(channelToPrint);
        ampChan = findAmpChan(channelToPrint);

        printf("Channel was using wavetable: %s\n", getChanWavetableName(channelToPrint));

        // Print notes:
        printf("Printing notes:\n\t");
        for (stepToPrint = 0; stepToPrint < songLength; stepToPrint++) {
            noteValue = noteChan[stepToPrint];
            printf("%s,", notes[noteValue]);
//            if (stepToPrint%4 == 3) {
//                printf("\n\t");
//            }
        }

        // Print Amplitude values:
        printf("\n Amplitude values:\n\t");
        for (stepToPrint = 0; stepToPrint < songLength; stepToPrint++) {
            printf("%i,", ampChan[stepToPrint]);
//            if (stepToPrint%4 == 3) {
//                printf("\n\t");
//            }
        }
    }

    printf("\nDone!\n");
}

void setWavetable(NCO *n, uint8_t wavetableIndex) {
    n->wavetable = wavetables[wavetableIndex];
    n->wavetableIndex = wavetableIndex;
}
NCO* findChanNCO(uint8_t chan) {
    switch(chan) {
        case 0:
            return &chan1Osc;
        case 1:
            return &chan2Osc;
        case 2:
            return &chan3Osc;
        case 3:
            return &chan4Osc;
        default:
            return &chan1Osc;
    }
}
void increaseWavetableIndex(uint8_t chan) {
    NCO *n = findChanNCO(chan);
    if (n->wavetableIndex+1 < waveTableCount) {
        setWavetable(n, n->wavetableIndex+1);
    }
}
void decreaseWavetableIndex(uint8_t chan) {
    NCO *n = findChanNCO(chan);
    if (n->wavetableIndex-1 >= 0) {
        setWavetable(n, n->wavetableIndex-1);
    }
}
char* getChanWavetableName(uint8_t chan) {
    NCO *n = findChanNCO(chan);
    return wavetableNames[n->wavetableIndex];
}

void ncoSetFreq(NCO *n, float freq) {
    // Set the phase step parameter of the given NCO struct based on the
    // desired value, given as a float. This changes its frequency in a phase
    // continuous manner, but this function should not be used inside a
    // critical loop for performance reasons. Instead, a chirp should be
    // implemented by precomputing the correct change to the phase rate
    // in fixed point and adding it after every sample:
    //
    // 256 table entries, 24 bits of fractional index; 2^24 = 16777216
    n->phase = (uint32_t) (freq * 256. * 16777216. + 0.5);
    printf("Freq: %f, Phase: %lu\n", (double)freq, n->phase);
}

void ncoSetPhase(NCO *n, uint32_t phase, uint8_t bend) {
    n->phase = phase + ((phase/1000) * bend);
}
void ncoSetNote(NCO *n, uint8_t note, uint8_t amplitude, uint8_t bend) {
    ncoSetPhase(n, currentPhaseTable[note], bend);
    n->amplitude = amplitude;
}

void ncoInit(NCO *n, float freq, uint8_t wavetableIndex) {
    // Initialize the oscillator data structure and set the target frequency
    // Frequency must be positive (although I don't check this).
    n->accumulator = 0;
    setWavetable(n, wavetableIndex);
    n->value = n->wavetable[0];
    n->amplitude = 0; // bit shift amount for final volume
    ncoSetFreq(n, freq);
}

void ncoStep(NCO *n) {
    // Compute the next output value from the table and save it so that it
    // can be referenced multiple times. Also, advance the accumulator by
    // the phase step amount.
    uint8_t index;
    // Convert from 8.24 fixed point to 8 bits of integer index
    // via a truncation (cheaper to implement but noisier than rounding)
    index = (n->accumulator >> 24) & 0xff;
    n->value = n->wavetable[index];
    n->accumulator += n->phase;
}

char *notes[] = {
    "??", "??", "??", "??",
    "??", "??", "??", "??",
    "??", "??", "??", "??",
    "C0", "Db0", "D0", "Eb0",
    "E0", "F0", "Gb0", "G0",
    "Ab0", "A0", "Bb0", "B0",
    "C1", "Db1", "D1", "Eb1",
    "E1", "F1", "Gb1", "G1",
    "Ab1", "A1", "Bb1", "B1",
    "C2", "Db2", "D2", "Eb2",
    "E2", "F2", "Gb2", "G2",
    "Ab2", "A2", "Bb2", "B2",
    "C3", "Db3", "D3", "Eb3",
    "E3", "F3", "Gb3", "G3",
    "Ab3", "A3", "Bb3", "B3",
    "C4", "Db4", "D4", "Eb4",
    "E4", "F4", "Gb4", "G4",
    "Ab4", "A4", "Bb4", "B4",
    "C5", "Db5", "D5", "Eb5",
    "E5", "F5", "Gb5", "G5",
    "Ab5", "A5", "Bb5", "B5",
    "C6", "Db6", "D6", "Eb6",
    "E6", "F6", "Gb6", "G6",
    "Ab6", "A6", "Bb6", "B6",
    "C7", "Db7", "D7", "Eb7",
    "E7", "F7", "Gb7", "G7",
    "Ab7", "A7", "Bb7", "B7",
    "C8", "Db8", "D8", "Eb8",
    "E8", "F8", "Gb8", "G8",
    "Ab8", "A8", "Bb8", "B8",
    "??", "??", "??", "??",
    "??", "??", "??", "??",
};

// NCO Phase table for all MIDI notes, 0-127:
// Generated with JS script found here:
// https://codepen.io/JamesHagerman/pen/eWeEpR
//
// Should probably generate this using C because this has floating point errors:
// 44100Hz sample rate
//uint32_t phaseTable44100[] = {
//    796254.2179447162, 843601.9279088025, 893765.0792181802, 946911.0867272264,
//    1003217.3202956029, 1062871.696743673, 1126073.3070074187, 1193033.0805859372,
//    1263974.4894990327, 1339134.2941043084, 1418763.3332628536, 1503127.3614906245,
//    1592507.9358894324, 1687203.355817605, 1787529.6584363603, 1893821.6734544528,
//    2006434.1405912058, 2125742.893487346, 2252146.1140148374, 2386065.6611718745,
//    2527948.4789980655, 2678268.0882086167, 2837526.166525708, 3006254.2229812476,
//    3185015.371778865, 3374406.21163521, 3575058.816872719, 3787642.8469089055,
//    4012867.781182413, 4251485.286974691, 4504291.728029675, 4772130.82234375,
//    5055896.45799613, 5356535.676417233, 5675051.833051416, 6012507.945962495,
//    6370030.24355773, 6748811.92327042, 7150117.133745438, 7575285.193817811,
//    8025735.062364826, 8502970.073949382, 9008582.95605935, 9544261.1446875,
//    10111792.41599226, 10713070.852834467, 11350103.166102832, 12025015.391924994,
//    12740059.98711546, 13497623.34654084, 14300233.767490879, 15150569.887635622,
//    16051469.624729648, 17005939.647898763, 18017165.4121187, 19088521.789374996,
//    20223584.33198452, 21426141.205668934, 22700205.832205664, 24050030.283849988,
//    25480119.47423092, 26995246.19308168, 28600467.034981757, 30301139.275271244,
//    32102938.749459296, 34011878.79579753, 36034330.3242374, 38177043.07874999,
//    40447168.16396904, 42852281.91133787, 45400411.16441133, 48100060.067699976,
//    50960238.44846184, 53990491.88616336, 57200933.569963515, 60602278.05054249,
//    64205876.99891859, 68023757.09159505, 72068660.1484748, 76354085.65749998,
//    80894335.82793808, 85704563.32267573, 90800821.82882266, 96200119.63539995,
//    101920476.39692368, 107980983.27232672, 114401866.63992703, 121204555.60108498,
//    128411753.49783719, 136047513.6831901, 144137319.7969496, 152708170.81499997,
//    161788671.15587616, 171409126.14535147, 181601643.15764531, 192400238.77079985,
//    203840952.29384735, 215961966.04465345, 228803732.77985403, 242409110.70216995,
//    256823506.49567443, 272095026.8663802, 288274639.0938992, 305416341.13,
//    323577341.8117523, 342818251.79070294, 363203285.81529063, 384800477.0415997,
//    407681904.0876947, 431923931.5893069, 457607465.05970806, 484818220.9043399,
//    513647012.49134886, 544190053.2327604, 576549277.6877984, 610832681.76,
//    647154683.1235046, 685636503.0814059, 726406571.130581, 769600953.5831997,
//    815363807.6753894, 863847862.6786138, 915214929.6194165, 969636441.3086798,
//    1027294024.4826974, 1088380105.965521, 1153098554.8755968, 1221665363.0199997
//};

// 22050Hz sample rate
uint32_t phaseTable22050[] = {
    1592507.9358894324, 1687203.355817605, 1787529.6584363603, 1893821.6734544528,
    2006434.1405912058, 2125742.893487346, 2252146.1140148374, 2386065.6611718745,
    2527948.4789980655, 2678268.0882086167, 2837526.166525707, 3006254.222981249,
    3185015.371778865, 3374406.21163521, 3575058.8168727206, 3787642.8469089055,
    4012867.7811824116, 4251485.286974692, 4504291.728029675, 4772130.822343749,
    5055896.457996131, 5356535.676417233, 5675051.833051416, 6012507.945962495,
    6370030.24355773, 6748811.92327042, 7150117.133745438, 7575285.193817811,
    8025735.062364826, 8502970.073949382, 9008582.95605935, 9544261.1446875,
    10111792.41599226, 10713070.852834467, 11350103.166102832, 12025015.39192499,
    12740059.98711546, 13497623.34654084, 14300233.767490877, 15150569.887635622,
    16051469.624729652, 17005939.647898763, 18017165.4121187, 19088521.789375,
    20223584.33198452, 21426141.205668934, 22700205.832205664, 24050030.283849988,
    25480119.47423092, 26995246.19308168, 28600467.034981757, 30301139.275271244,
    32102938.749459296, 34011878.79579753, 36034330.3242374, 38177043.07874999,
    40447168.16396904, 42852281.91133787, 45400411.16441133, 48100060.067699976,
    50960238.44846184, 53990491.88616336, 57200933.569963515, 60602278.05054249,
    64205876.99891859, 68023757.09159505, 72068660.1484748, 76354085.65749998,
    80894335.82793808, 85704563.32267573, 90800821.82882266, 96200119.63539995,
    101920476.39692368, 107980983.27232672, 114401866.63992703, 121204555.60108498,
    128411753.49783719, 136047513.6831901, 144137319.7969496, 152708170.81499997,
    161788671.15587616, 171409126.14535147, 181601643.15764531, 192400238.7707999,
    203840952.29384735, 215961966.04465345, 228803732.77985406, 242409110.70216995,
    256823506.49567437, 272095026.8663802, 288274639.0938992, 305416341.12999994,
    323577341.8117523, 342818251.79070294, 363203285.81529063, 384800477.0415997,
    407681904.0876947, 431923931.5893069, 457607465.05970806, 484818220.9043399,
    513647012.49134886, 544190053.2327604, 576549277.6877984, 610832681.76,
    647154683.1235046, 685636503.0814059, 726406571.1305813, 769600953.5831994,
    815363807.6753894, 863847862.6786138, 915214929.6194161, 969636441.3086798,
    1027294024.4826977, 1088380105.9655209, 1153098554.8755968, 1221665363.02,
    1294309365.7470093, 1371273005.6628118, 1452813141.761162, 1539201906.6663995,
    1630727614.8507788, 1727695724.8572276, 1830429858.738833, 1939272882.1173596,
    2054588048.4653947, 2176760211.431042, 2306197109.2511935, 2443330725.5399995
};

//uint32_t phaseTable11025[] = {
//    318632.0408680367, 337578.8582485204, 357652.31201870827, 378919.39546454954,
//    401451.0855000779, 425322.57954626356, 450613.54649541463, 477408.3925987009,
//    505796.5431641699, 535872.741005399, 567737.36263683, 601496.7532710544,
//    637263.5817360734, 675157.2164970408, 715304.1240374165, 757838.2909290991,
//    802901.6710001559, 850644.6590925271, 901226.5929908293, 954816.2851974018,
//    1011592.5863283398, 1071744.982010798, 1135474.2252736602, 1202993.006542108,
//    1274526.6634721467, 1350313.9329940816, 1430607.7480748324, 1515676.0818581982,
//    1605802.8420003122, 1701288.8181850538, 1802452.6859816585, 1909632.070394804,
//    2023184.6726566793, 2143489.464021596, 2270947.9505473203, 2405985.513084216,
//    2549052.8269442935, 2700627.3659881633, 2861214.9961496647, 3031351.6637163963,
//    3211605.1840006243, 3402577.1363701075, 3604904.871963317, 3819263.640789608,
//    4046368.8453133586, 4286978.428043192, 4541895.401094641, 4811970.526168433,
//    5098105.153888587, 5401254.231976327, 5722429.492299331, 6062702.827432793,
//    6423209.868001248, 6805153.772740215, 7209809.243926634, 7638526.781579215,
//    8092737.190626717, 8573956.356086385, 9083790.302189281, 9623940.552336866,
//    10196209.807777174, 10802507.963952653, 11444858.484598663, 12125405.154865585,
//    12846419.236002496, 13610307.04548043, 14419617.987853268, 15277053.06315843,
//    16185473.881253434, 17147912.21217277, 18167580.104378562, 19247880.604673732,
//    20392419.115554348, 21605015.427905306, 22889716.469197325, 24250809.80973117,
//    25692837.97200499, 27220613.59096086, 28839235.475706536, 30554105.62631686,
//    32370947.26250687, 34295823.92434554, 36335159.708757125, 38495760.709347464,
//    40784837.731108695, 43210030.35581061, 45779432.43839465, 48501619.11946234,
//    51385675.44400998, 54441226.68192172, 57678470.45141307, 61108210.75263372,
//    64741894.02501374, 68591647.34869108, 72670318.91751425, 76991520.91869491,
//    81569674.96221739, 86420060.21162122, 91558864.37678927, 97003237.73892468,
//    102771350.38801998, 108882452.86384344, 115356940.40282615, 122216421.00526746,
//    129483787.55002747, 137183294.19738215, 145340637.3350285, 153983041.33738983,
//    163139349.42443478, 172840119.92324245, 183117728.25357854, 194006474.97784936,
//    205542700.27603996, 217764905.22768688, 230713880.3056523, 244432841.5105349,
//    258967574.60005495, 274366587.8947643, 290681274.17005694, 307966082.17477983,
//    326278698.34886956, 345680239.3464849, 366235456.00715727, 388012949.4556987,
//    411085400.0520798, 435529809.9553739, 461427760.1113046, 488865682.5210697
//};

const uint8_t waveTableCount = 7;
const uint8_t *wavetables[] = {
    sinetable,
    zigzagtable,
    saw,
    pulse50,
    pulse75,
    noise,
    drum
};
char *wavetableNames[] = {
  "sine", // 0
  "zzag", // 1
  "saw",  // 2
  "p50",  // 3
  "p75",  // 4
  "nse",  // 5
  "drm"   // 6
};

//__prog__ const uint8_t sinetable[] __attribute__((space(prog), section("SINE"))) = {
const uint8_t sinetable[] = {
0x7f, 0x83, 0x86, 0x89, 0x8c, 0x8f, 0x92, 0x95,
0x98, 0x9b, 0x9e, 0xa2, 0xa5, 0xa7, 0xaa, 0xad,
0xb0, 0xb3, 0xb6, 0xb9, 0xbc, 0xbe, 0xc1, 0xc4,
0xc6, 0xc9, 0xcb, 0xce, 0xd0, 0xd3, 0xd5, 0xd7,
0xda, 0xdc, 0xde, 0xe0, 0xe2, 0xe4, 0xe6, 0xe8,
0xea, 0xeb, 0xed, 0xee, 0xf0, 0xf1, 0xf3, 0xf4,
0xf5, 0xf6, 0xf8, 0xf9, 0xfa, 0xfa, 0xfb, 0xfc,
0xfd, 0xfd, 0xfe, 0xfe, 0xfe, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xfe, 0xfe, 0xfe, 0xfd,
0xfd, 0xfc, 0xfb, 0xfa, 0xfa, 0xf9, 0xf8, 0xf6,
0xf5, 0xf4, 0xf3, 0xf1, 0xf0, 0xee, 0xed, 0xeb,
0xea, 0xe8, 0xe6, 0xe4, 0xe2, 0xe0, 0xde, 0xdc,
0xda, 0xd7, 0xd5, 0xd3, 0xd0, 0xce, 0xcb, 0xc9,
0xc6, 0xc4, 0xc1, 0xbe, 0xbc, 0xb9, 0xb6, 0xb3,
0xb0, 0xad, 0xaa, 0xa7, 0xa5, 0xa2, 0x9e, 0x9b,
0x98, 0x95, 0x92, 0x8f, 0x8c, 0x89, 0x86, 0x83,
0x7f, 0x7c, 0x79, 0x76, 0x73, 0x70, 0x6d, 0x6a,
0x67, 0x64, 0x61, 0x5d, 0x5a, 0x58, 0x55, 0x52,
0x4f, 0x4c, 0x49, 0x46, 0x43, 0x41, 0x3e, 0x3b,
0x39, 0x36, 0x34, 0x31, 0x2f, 0x2c, 0x2a, 0x28,
0x25, 0x23, 0x21, 0x1f, 0x1d, 0x1b, 0x19, 0x17,
0x15, 0x14, 0x12, 0x11, 0xf, 0xe, 0xc, 0xb,
0xa, 0x9, 0x7, 0x6, 0x5, 0x5, 0x4, 0x3,
0x2, 0x2, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x2,
0x2, 0x3, 0x4, 0x5, 0x5, 0x6, 0x7, 0x9,
0xa, 0xb, 0xc, 0xe, 0xf, 0x11, 0x12, 0x14,
0x15, 0x17, 0x19, 0x1b, 0x1d, 0x1f, 0x21, 0x23,
0x25, 0x28, 0x2a, 0x2c, 0x2f, 0x31, 0x34, 0x36,
0x39, 0x3b, 0x3e, 0x41, 0x43, 0x46, 0x49, 0x4c,
0x4f, 0x52, 0x55, 0x58, 0x5a, 0x5d, 0x61, 0x64,
0x67, 0x6a, 0x6d, 0x70, 0x73, 0x76, 0x79, 0x7c
};
//__prog__ const unsigned char zigzagtable[] __attribute__((space(prog), section("ZIGZAG"))) = {
const uint8_t zigzagtable[] = {
0xff, 0xfe, 0xfd, 0xfc, 0xfb, 0xfa, 0xf9, 0xf8,
0xf7, 0xf6, 0xf5, 0xf4, 0xf3, 0xf2, 0xf1, 0xf0,
0xef, 0xee, 0xed, 0xec, 0xeb, 0xea, 0xe9, 0xe8,
0xe7, 0xe6, 0xe5, 0xe4, 0xe3, 0xe2, 0xe1, 0xe0,
0xdf, 0xde, 0xdd, 0xdc, 0xdb, 0xda, 0xd9, 0xd8,
0xd7, 0xd6, 0xd5, 0xd4, 0xd3, 0xd2, 0xd1, 0xd0,
0xcf, 0xce, 0xcd, 0xcc, 0xcb, 0xca, 0xc9, 0xc8,
0xc7, 0xc6, 0xc5, 0xc4, 0xc3, 0xc2, 0xc1, 0xc0,
0xbf, 0xbe, 0xbd, 0xbc, 0xbb, 0xba, 0xb9, 0xb8,
0xb7, 0xb6, 0xb5, 0xb4, 0xb3, 0xb2, 0xb1, 0xb0,
0xaf, 0xae, 0xad, 0xac, 0xab, 0xaa, 0xa9, 0xa8,
0xa7, 0xa6, 0xa5, 0xa4, 0xa3, 0xa2, 0xa1, 0xa0,
0x9f, 0x9e, 0x9d, 0x9c, 0x9b, 0x9a, 0x99, 0x98,
0x97, 0x96, 0x95, 0x94, 0x93, 0x92, 0x91, 0x90,
0x8f, 0x8e, 0x8d, 0x8c, 0x8b, 0x8a, 0x89, 0x88,
0x87, 0x86, 0x85, 0x84, 0x83, 0x82, 0x81, 0x80,
0x7f, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7,
0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f,
0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27,
0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f,
0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f,
0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57,
0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f,
0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67,
0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f,
0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77,
0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f
};
//__prog__ const unsigned char saw[] __attribute__((space(prog), section("SAW"))) = {
const uint8_t saw[] = {
0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7,
0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f,
0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27,
0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f,
0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f,
0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57,
0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f,
0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67,
0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f,
0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77,
0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f,
0x80, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86,
0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e,
0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96,
0x97, 0x98, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e,
0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6,
0xa7, 0xa8, 0xa9, 0xaa, 0xab, 0xac, 0xad, 0xae,
0xaf, 0xb0, 0xb1, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6,
0xb7, 0xb8, 0xb9, 0xba, 0xbb, 0xbc, 0xbd, 0xbe,
0xbf, 0xc0, 0xc1, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6,
0xc7, 0xc8, 0xc9, 0xca, 0xcb, 0xcc, 0xcd, 0xce,
0xcf, 0xd0, 0xd1, 0xd2, 0xd3, 0xd4, 0xd5, 0xd6,
0xd7, 0xd8, 0xd9, 0xda, 0xdb, 0xdc, 0xdd, 0xde,
0xdf, 0xe0, 0xe1, 0xe2, 0xe3, 0xe4, 0xe5, 0xe6,
0xe7, 0xe8, 0xe9, 0xea, 0xeb, 0xec, 0xed, 0xee,
0xef, 0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6,
0xf7, 0xf8, 0xf9, 0xfa, 0xfb, 0xfc, 0xfd, 0xfe
};
//__prog__ const unsigned char pulse50[] __attribute__((space(prog), section("PULS50"))) = {
const uint8_t pulse50[] = {
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
};
//__prog__ const unsigned char pulse75[] __attribute__((space(prog), section("PULS75"))) = {
const uint8_t pulse75[] = {
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
};
//__prog__ const unsigned char noise[] __attribute__((space(prog), section("NOISE"))) = {
const uint8_t noise[] = {
0xe0, 0x13, 0x80, 0xb2, 0x3b, 0x44, 0x8c, 0x1c,
0xbb, 0xf9, 0xd5, 0xa6, 0xf, 0xb7, 0x9, 0xcc,
0x99, 0x51, 0xa9, 0x48, 0xb8, 0x2e, 0xce, 0x96,
0x88, 0xdf, 0xe2, 0x32, 0xdd, 0x72, 0x1e, 0x39,
0x3c, 0x32, 0x36, 0xb0, 0xc, 0x65, 0xdf, 0x54,
0x49, 0x67, 0x65, 0xc9, 0x3e, 0xe8, 0x1b, 0x9e,
0xe9, 0x87, 0x21, 0x76, 0xe5, 0x4d, 0xb5, 0x99,
0xd, 0x77, 0x9, 0x5a, 0x41, 0x13, 0xec, 0xf4,
0x5, 0x93, 0x7c, 0xee, 0xa2, 0x50, 0xc, 0x13,
0x96, 0xfc, 0x16, 0x56, 0x35, 0xd8, 0xd, 0x2f,
0xb3, 0xb6, 0x51, 0xf6, 0xb0, 0x79, 0x97, 0x36,
0xbd, 0x3c, 0x97, 0x8a, 0x60, 0x58, 0x7f, 0xa5,
0xc6, 0x3e, 0x35, 0xa4, 0xdb, 0x73, 0x23, 0xd0,
0xd0, 0x98, 0xfb, 0x5f, 0xd2, 0xd0, 0x69, 0x52,
0xd8, 0x48, 0x2d, 0xb2, 0x59, 0xb6, 0xe6, 0xe6,
0xf0, 0x73, 0xe, 0xe6, 0x33, 0x95, 0x8e, 0xa3,
0xac, 0x12, 0x3, 0xa1, 0xb0, 0xf2, 0xac, 0x31,
0x8a, 0xf6, 0x5f, 0x6d, 0xde, 0xbf, 0x7e, 0xcd,
0x22, 0x10, 0x19, 0xe6, 0xed, 0xff, 0x6e, 0xcf,
0x66, 0xf5, 0x76, 0x61, 0xd8, 0x87, 0x3c, 0xd4,
0x50, 0xa3, 0x5b, 0x96, 0xb8, 0xec, 0x9c, 0xb,
0x6, 0x37, 0x60, 0xb7, 0x3a, 0x74, 0xa3, 0xc6,
0x97, 0x62, 0xe8, 0x67, 0x2a, 0xe9, 0x33, 0x2f,
0x2f, 0xc2, 0x81, 0x43, 0x3a, 0xc9, 0xdd, 0xd1,
0xbd, 0x28, 0x89, 0xfb, 0x8f, 0x27, 0x42, 0xe0,
0xe9, 0x1b, 0xad, 0x8f, 0x4, 0xe9, 0xa2, 0x39,
0x5f, 0x7f, 0xc, 0xca, 0x73, 0xef, 0x9a, 0x7b,
0x4c, 0x7b, 0xf7, 0x2c, 0xd8, 0x8d, 0x21, 0x50,
0x4f, 0x2, 0x25, 0x1a, 0x89, 0x95, 0xbe, 0x48,
0xdd, 0x6f, 0xc3, 0x96, 0x44, 0xc, 0xbd, 0xfb,
0xac, 0xd5, 0x69, 0xe7, 0x6e, 0xe5, 0x4c, 0xb2,
0x6b, 0x68, 0xf1, 0x12, 0x63, 0x16, 0x13, 0x62
};

const unsigned char drum[] = {
0x7f, 0x8c, 0x98, 0xa4, 0xb0, 0xbb, 0xc5, 0xce,
0xd7, 0xdf, 0xe5, 0xec, 0xf0, 0xf4, 0xf6, 0xf7,
0xf7, 0xf6, 0xf4, 0xf1, 0xec, 0xe7, 0xe0, 0xda,
0xd1, 0xc9, 0xbf, 0xb5, 0xab, 0xa0, 0x95, 0x8b,
0x7f, 0x75, 0x6a, 0x5f, 0x56, 0x4c, 0x43, 0x3b,
0x34, 0x2c, 0x27, 0x22, 0x1e, 0x1b, 0x19, 0x18,
0x18, 0x19, 0x1b, 0x1e, 0x22, 0x26, 0x2c, 0x32,
0x39, 0x40, 0x49, 0x51, 0x5a, 0x63, 0x6d, 0x76,
0x80, 0x89, 0x92, 0x9b, 0xa3, 0xac, 0xb3, 0xba,
0xc0, 0xc6, 0xcb, 0xcf, 0xd2, 0xd5, 0xd6, 0xd7,
0xd7, 0xd6, 0xd4, 0xd2, 0xce, 0xcb, 0xc6, 0xc1,
0xba, 0xb4, 0xad, 0xa6, 0x9f, 0x97, 0x8f, 0x87,
0x80, 0x78, 0x70, 0x69, 0x62, 0x5b, 0x55, 0x4f,
0x4a, 0x45, 0x42, 0x3e, 0x3c, 0x39, 0x39, 0x38,
0x38, 0x39, 0x3b, 0x3c, 0x40, 0x42, 0x47, 0x4b,
0x50, 0x55, 0x5b, 0x60, 0x67, 0x6d, 0x73, 0x79,
0x7f, 0x86, 0x8c, 0x92, 0x97, 0x9c, 0xa1, 0xa6,
0xa9, 0xad, 0xb0, 0xb3, 0xb4, 0xb6, 0xb7, 0xb7,
0xb7, 0xb6, 0xb5, 0xb3, 0xb1, 0xae, 0xab, 0xa8,
0xa4, 0xa0, 0x9b, 0x97, 0x92, 0x8e, 0x89, 0x84,
0x80, 0x7b, 0x76, 0x72, 0x6e, 0x6a, 0x67, 0x63,
0x61, 0x5e, 0x5c, 0x5a, 0x59, 0x58, 0x58, 0x58,
0x58, 0x59, 0x5a, 0x5b, 0x5d, 0x5f, 0x61, 0x64,
0x67, 0x69, 0x6d, 0x6f, 0x73, 0x76, 0x79, 0x7c,
0x7f, 0x83, 0x85, 0x88, 0x8b, 0x8d, 0x8f, 0x91,
0x93, 0x94, 0x95, 0x97, 0x97, 0x98, 0x97, 0x97,
0x97, 0x96, 0x95, 0x95, 0x93, 0x92, 0x90, 0x8f,
0x8d, 0x8c, 0x8a, 0x88, 0x86, 0x84, 0x83, 0x81,
0x7f, 0x7e, 0x7d, 0x7b, 0x7b, 0x79, 0x79, 0x78,
0x78, 0x77, 0x77, 0x77, 0x77, 0x77, 0x78, 0x78,
0x78, 0x79, 0x7a, 0x7a, 0x7b, 0x7b, 0x7c, 0x7c,
0x7d, 0x7e, 0x7e, 0x7f, 0x7f, 0x7f, 0x80, 0x80
};
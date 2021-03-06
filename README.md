# L1 Demoparty Entries

This is a collection of all my Layerone Demoparty Entries. They're mine. Don't pawn them off as your own...

But use this code as a starter for your own demo!

## 2018 UNKNOWN

For 2018, I'm moving on. While working with Arko's board has been a blast, a challenge, and a learning experience beyond most others rings I've thrown my hat into, I need another challenge.

Partially, this is due to prior commitments. Partially, this is due to not knowing if I'll even be there in LA for L1 this year as I no longer live in the area.

But mostly, it's beacuse there's no way to compete against datagram and jk's demo from last year! Those dudes finally threw down on how this is supposed to be done. And I just ain't worthy afaict

Arko said the wildcard is open again this year, and since I had fun on that last year, maybe I'll do so again this year.

"Chase the beam", they said...

Well, okay then!


## Past Demos

## 2017 Audio Tracker

For 2017, I wanted to turn the demoboard into some sort of synthesizer. After realizing that the board isn't wired for USB Host support, and after realizing that running it as a USB Slave wouldn't be that useful for a stand alone project (or demo for that matter), I decided to try writing an old school tracker.

Trackers are historic. They were really the first form of Digital Audio Workstation available to many people. Almost all of the good video game music (not to mention modern 8bit music) was written using a tracker.

But I'm new to trackers. I had to start from the ground up.

First, I had to build an audio engine. I had used wavetables in the past on this board, but it used a pretty rough, slow engine. A couple of writeups and youtube videos on Direct Digital Synthesis and phase accumulators later, I had a much better wavetable audio engine!

And the best part was that I figured out I could run 4 channels of WT audio and STILL have plenty of processing time left over for graphics!

After figuring out how to send serial commands to the board's UART, I was able to write the tracker interface itself (which took the most time, honestly).

Once that was done, I used the tracker to write a simple song, spent a little time making the audio control some simple graphics, and called it a day.

Here's the final entry in all it's glory. (Excuse the language, we were all a bit tipsy at that point):

https://www.youtube.com/watch?v=fUCvhj4NFEg&t=6m44s


### 2016 CodeCrow

For the 2016 L1 Demoparty

This year, I wanted to get closer to something of a useable "demo party builder" type demo. I wanted to be able to debug the damn thing without writing characters and pixels to the screen (so, UART), and I wanted to try getting the GPIO working. I got both of those things done, plus tried my hand at pixel art. Managing the CLUT was also on the agenda and after a bunch of pain, I got that working as well.

I suck at pixel art and so just pushed the animation speed up to 11 and got as many colors fading as I could behind my crappy art.

I was happy to see how fast this little board could push pixels!

Here's the video:

https://www.youtube.com/watch?v=nEnQhmWmAyQ&feature=youtu.be&t=5m24s

#### Serial Setup

The serial port sits on `TX:RP6` and `RX:RP7`running at `115200 baud`. Hook up ground, and those two to a FTDI or other USB serial adapter and you should see output!

It works, but I don't remember how I wired the damn thing right now. It'll be used in the 2017 (this year) demo so I'll add notes here when I get there.

NOTE: If you're trying to get Serial working, CHECK THE DOCS DIRECTORY for the `UART_tutorial.md` writeup!

#### Pause jumper

The jumper near R28 and Ground (the pair closest to the audio output) can be used to stop part of the animation. It's most useful to make sure the VGA display has gotten it's act together before starting your demo. Or, just to have fun with the various colors of the animation!

### 2015 Hexadecimal Aliens

For the 2015 L1 Demoparty

The plan was to have somewhat more than a story and cool effects... but I just literally ran out of time while dicking with all the possible animation options. And I had about 2 weeks to complete it.

So there are holes... but I feel like a got a lot working in such a short time!

Here's the video:

https://www.youtube.com/watch?v=Cu7p3W2zKgY

## Processing Scripts (possibly also C++, sorry)

I've written 4 scripts (Processing, sorry, it what I had at the time, deal with it.) to help build demos. They may or may not be useful to you.

You'll have to reverse engineer them somewhat... I know I have to every damn year!

The `paletteLoader` script is actually C++. It reads the binary `.pal` file format... or at least I think it does...

## `docs` folder

Really, the only thing in there right now is a writeup on the boards UART nonesense

## Notes

This is just a collection of various notes I've taken throughout building all this.


### Other references:

Vector doc:
file:///opt/microchip/xc16/v1.26/docs/vector_docs/PIC24FJ256DA206.html

datasheet:
http://l1demo.org/wiki/_media/pic24fj256da206.pdf

More Microchip docs:

xc16 Compiler docs (I always forget about these):
http://ww1.microchip.com/downloads/en/DeviceDoc/50002071E.pdf

Chip:
http://ww1.microchip.com/downloads/en/DeviceDoc/39969b.pdf

GFX Processor:
http://ww1.microchip.com/downloads/en/DeviceDoc/39731a.pdf

Video sync values:
http://xtiming.sourceforge.net/cgi-bin/xtiming.pl
http://www.epanorama.net/faq/vga2rgb/calc.html


Spit out the values for the L1demoboards timing:
```
perl -e '$d = 1; $x = 0; while($x < 128) { printf "%s %.2fHz\n",$x,96/$d;if($x < 64) { $d += 0.25; } elsif($x < 96) { $d += 0.50 } else { $d += 1 }; $x++}'
```



## Random shit

Font:
http://www.pentacom.jp/pentacom/bitfontmaker2/gallery/?id=235

Rules:
	L1 Demoscene Board
	- Must use an unmodified Layerone Demoscene Board
	- Only USB power will be supplied, no external communication allowed
	- Must display VGA (at least 480pixels vertical) or QVGA (320x240)


Getting started wiki entry:
	http://l1demo.org/wiki/demoboard_getting_started


### Board notes
```
	MCU: PIC24FJ256DA206
	RAM: 96k
	program memory: 256K
	ICSP Pin one: closest to reset switch/vga port

	Switch:
		towards USB port:
			USB power
		Away from USB port:
			header power

	Flashing:
		Open either “L1DemoLoaderGUI.exe” or “L1DemoUpgrader.exe” (MAC/Linux users can use Mono to open them)
		For L1DemoLoaderGUI users, set Device: PIC24J 256DA206, Baud Rate: 115200

	Bootloader:
		jump pins 4 and 5
		This will leave it in USB Bootloader mode (as a COM port) until the jumper is moved to 3 and 4.
	Boot flash mode:
		jump pins 3 and 4
		This will leave it in USB Bootloader mode for 5 seconds, THEN BOOT.
```

### Documentation notes
```
	Microchip GFX Controller Module docs:
		Section 43: GFX Controller Module
```


#### Resolutions
```
640x350 @ 70Hz: 1bpp 28.0k (D), 2bpp 56.0k
640x400 @ 70Hz: 1bpp 32.0k (D), 2bpp 64.0k
640x480 @ 60Hz: 1bpp 38.4k (D), 2bpp 76.8k
320x480 @ 60Hz: 1bpp 19.2k (D), 2bpp 38.4k (D), 4bpp 76.8k
160x480 @ 60Hz: 1bpp 09.6k (D), 2bpp 19.2k (D), 4bpp 38.4k (D), 8bpp 76.8k
080x480 @ 60Hz: 1bpp 04.8k (D), 2bpp 09.6k (D), 4bpp 19.2k (D), 8bpp 38.4k (D), 16bpp 76.8k
```

I think this resolution will be interesting, and it fit the rules of the party. Specifically, 4bpp which would give me 16 colors. (Mode 2 on SNES, by the way):

```
320x480 @ 60Hz: 1bpp 19.2k (D), 2bpp 38.4k (D), 4bpp 76.8k
```

```
-// These settings FULLY work:
-//80x480@60: 16bpp
-//#define CLOCKDIV 69
-//#define HOR_RES 80UL
-//#define VER_RES 480UL
-//#define HOR_FRONT_PORCH 32
-//#define HOR_PULSE_WIDTH 16
-//#define HOR_BACK_PORCH  32
-//#define VER_FRONT_PORCH 10
-//#define VER_PULSE_WIDTH 5
-//#define VER_BACK_PORCH  10
-//#define BPP 16
-//#define GFX_BUFFER_SIZE 76800 // This is only for BPP = 16 @480*80
-
-// 160x480@4bpp
-#define CLOCKDIV 47
-#define HOR_RES 160UL
-#define VER_RES 480UL
-#define HOR_FRONT_PORCH 32
-#define HOR_PULSE_WIDTH 24
-#define HOR_BACK_PORCH  32
-#define VER_FRONT_PORCH 10
-#define VER_PULSE_WIDTH 5
-#define VER_BACK_PORCH  10
-#define BPP 4
-
-// 320x480@4bpp
-//#define CLOCKDIV 25
-//#define HOR_RES 320UL
-//#define VER_RES 480UL
-//#define HOR_FRONT_PORCH 32
-//#define HOR_PULSE_WIDTH 48
-//#define HOR_BACK_PORCH  32
-//#define VER_FRONT_PORCH 10
-//#define VER_PULSE_WIDTH 5
-//#define VER_BACK_PORCH  10
-//#define BPP 4
-
-// 480x480@2bpp
-//#define CLOCKDIV 17
-//#define HOR_RES 480UL
-//#define VER_RES 480UL
-//#define HOR_FRONT_PORCH 32
-//#define HOR_PULSE_WIDTH 64
-//#define HOR_BACK_PORCH  32
-//#define VER_FRONT_PORCH 10
-//#define VER_PULSE_WIDTH 5
-//#define VER_BACK_PORCH  10
-//#define BPP 2
-
-//640x480@60: 1bpp
-//#define CLOCKDIV 11
-//#define HOR_RES 640UL
-//#define VER_RES 480UL
-//#define HOR_FRONT_PORCH 16
-//#define HOR_PULSE_WIDTH 96
-//#define HOR_BACK_PORCH  48
-//#define VER_FRONT_PORCH 10
-//#define VER_PULSE_WIDTH 2
-//#define VER_BACK_PORCH  33
-//#define BPP 1
```

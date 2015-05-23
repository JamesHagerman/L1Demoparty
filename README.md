Hexadecimal Aliens
==================

by James Hagerman
for the 2015 L1 Demoparty


Notes
-----

Microchip docs:

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



Random shit
-----------





Rules:
	L1 Demoscene Board
	- Must use an unmodified Layerone Demoscene Board
	- Only USB power will be supplied, no external communication allowed
	- Must display VGA (at least 480pixels vertical) or QVGA (320x240)


Getting started wiki entry:
	http://l1demo.org/wiki/demoboard_getting_started



Board notes:
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


Documentation notes:
	Microchip GFX Controller Module docs:
		Section 43: GFX Controller Module





Resolutions:
640x350 @ 70Hz: 1bpp 28.0k (D), 2bpp 56.0k
640x400 @ 70Hz: 1bpp 32.0k (D), 2bpp 64.0k
640x480 @ 60Hz: 1bpp 38.4k (D), 2bpp 76.8k
320x480 @ 60Hz: 1bpp 19.2k (D), 2bpp 38.4k (D), 4bpp 76.8k
160x480 @ 60Hz: 1bpp 09.6k (D), 2bpp 19.2k (D), 4bpp 38.4k (D), 8bpp 76.8k
080x480 @ 60Hz: 1bpp 04.8k (D), 2bpp 09.6k (D), 4bpp 19.2k (D), 8bpp 38.4k (D), 16bpp 76.8k


I think this resolution will be interesting, and it fit the rules of the party. Specifically, 4bpp which would give me 16 colors. (Mode 2 on SNES, by the way):

320x480 @ 60Hz: 1bpp 19.2k (D), 2bpp 38.4k (D), 4bpp 76.8k


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

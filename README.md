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

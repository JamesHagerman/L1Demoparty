#      Hexadecimal Aliens
##by:  James Hagerman
##for: L1 Demoparty


Notes
============

Video sync values:
http://xtiming.sourceforge.net/cgi-bin/xtiming.pl
http://www.epanorama.net/faq/vga2rgb/calc.html

```
perl -e '$d = 1; $x = 0; while($x < 128) { printf "%s %.2fHz\n",$x,96/$d;if($x < 64) { $d += 0.25; } elsif($x < 96) { $d += 0.50 } else { $d += 1 }; $x++}'
```

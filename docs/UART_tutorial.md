# UART under XC16 on the PIC24F line

So, the microchip forums pretty much suck. In a lot of ways.

One of which is that it's mostly filled with people that either don't know how to help, don't want to help, or will help just enough to tell you the tried and true RTFM.

And that's bullshit when you're trying to build cool projects.

The saving grace of all this is that, despite Microchips inability to host decent, working, stable, long lived web forums, at LEAST they know how to write verbose docs and datasheets...

Not, to say that their verbosity isn't a complete pain in the ass sometimes...

## UART/Serial ports

Getting an Arduino in the mail and plugging it in, the first thing you realize is that friggin serial terminal lets you actually debug the damn thing.

So, when we switch over to PIC, getting UART working is kind of a big deal.

But it's not easy. Not if you're writing raw C code in MPLAB X or something.

1. The first step is to dig up the datasheet for your specific micro. In my case, for the l1 demoparty board, this is the PIC24FJ256DA206
2. Then, after finding the UART section in the datasheet, you'll need to PAY ATTENTION to the grey note that starts with `This data sheet summarizes the features of this group of PIC24F devices` and go find the document it mentions. THAT document will have ALL of the UART specific docs for you to dig through.
3. Go read that, then sit down and try to build a simple printf() scanf() program, bang your head against the reassignable pins, and interrupts for a while, then realize that you probably should have read more of those docs.

## The rest of the docs

Basically, Microchip, the company, has no idea what you're trying to hack their micro's into. They provide a good amount of help, but it's still up to you to figure out how to architect, program, and debug the actual code.

One big hole in their assumptions is that they seem to think you WANT this shit to be difficult at every turn. And, while that's not their intention, they do a fairly poor job of bringing the reading level down on their docs, making cheatsheets, throwing together interesting cross platform tutorials, and making their tech accessible to mere mortals.

And that means you really REALLY REALLY have to actually sit down and read through every documentation file they provide.

Besides the chips datasheets, read through the XC16 docs as well. This doc has the file name `16-Bit_Language_Tools_Libraries_Manual.pdf`

## Inside the XC16 Language Tools Libraries Manual

This is, by far, the most important document besides the datasheets and it describes a LOT of useful information that a naive developer will ASSUME to know.

### UART and stdio.h

The best commands for UART management are the standard C console methodss, `printf()` and `scanf()`. These methods are defined in `stdio.h`. In Microchip XC16 land, `stdio.h` is documented in the `16-Bit_Language_Tools_Libraries_Manual.pdf` on page 47, in section `2.13 <STDIO.H> INPUT AND OUTPUT`

Reading through this will get you to section `2.13.2 Customizing STDIO`

THIS is the root of how `printf()` and `scanf()` don't work out of the box quite the way you'd expect (well, printf works, scanf doesn't).

You need to understand that `read()`, `write()`, and `open()` are defined pretty generically in XC16 land. In fact, Microchip even provides you the code for these three methods (as well as a few others) so that you CAN hack their chips into some crazy project!!

So, go find where ever XC16 was installed (under Linux, it's `/opt/microchip/xc16/v1.26/`), and then dig around until you find the `read.c`, `open.c`, and `write.c` files. These come zipped up in a file called `libpic30.zip` inside of this subdirectory of wherever XC16 was installed: `src/`

Once you unzip that, you'll be able to look inside the new `pic30` directory for those three `stdio.h` related .c files.

Those files, along with the notes in section `2.13.2 Customizing STDIO` (as well as actually understanding how the UART peripheral on your micro works at a low level) SHOULD be enough for you to patch together NEW versions of those methods that will work correctly with your UART.

## Working putc() method for printf()

THIS they seem to have gotten right in XC16! We don't have to override it to get it to work. XC8 required you too, so this was nice break get after a bunch of other work!

## Working read() method for scanf()

Here you go! The code you're looking for! Honestly, this could probably be cleaned up to be more generic about which UART peripheral is enabled...

```
int __attribute__((__weak__, __section__(".libc")))
read(int handle, void *buffer, unsigned int len)
{
    int i;
    int readChar;
    switch (handle) {
        case 0: // stdout
        case 1: // stdin
        case 2: // stderr
            for (i = len; i; --i) {
                while (!U1STAbits.URXDA); // wait until UART1 rx char ready
                readChar = U1RXREG;
                *(char*)buffer++ = readChar;
                U1TXREG = readChar; // echo readChar back to serial out...

                // You may have to change your expected "enter key" values...
                // carriage return = 0x0D = '\r'
                //         newline = 0x0A = '\n'
                if (readChar == 0x0D || readChar == 0x0A) {
                    // These reset the terminal. I'm not sure if we need these.
//                    U1TXREG = '\r';
                    U1TXREG = '\n';
                    break; // break out of the for loop...
                }
            }

            len -= i; // Calculate how many characters we read before breaking
            break;
        default:
            break;
    }

    return len;
}
```

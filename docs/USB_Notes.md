# USB Notes

After taking a closer look at the board's circuit, the Layerone Demoparty Board does not have what it needs to be a host device. At least, it can't power any USB devices off it's 5 volt line. The switch is SPST and it disconnects the Vbus line entirely when you power it using the header.

This thing should support being a USB Device though. At some point I'll try to figure out how to get this thing to be a MIDI synth...

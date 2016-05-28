// This program will convert 24 bit color that we're all used to
// down to either 8bit or 16 bit versions.
//
// NOTE: This is configured ONLY for PIC24F Microcontrollers!
// If you're using some other system, these results will be wrong!

void toPICColor(color toConvert) {
  float r = red(toConvert);
  float g = green(toConvert);
  float b = blue(toConvert);
  
  // Do 8 bit conversion
  int newR = round(map(r, 0, 255, 0, 7));
  int newG = round(map(g, 0, 255, 0, 7));
  int newB = round(map(b, 0, 255, 0, 3));
  int hexOut = (newR<<5) | (newG<<2) | newB;
  System.out.printf(" 8bit conversion output: 0x%x \n", hexOut);
  
  // Do 16 bit conversion
  newR = round(map(r, 0, 255, 0, 31)); //0b11111
  newG = round(map(g, 0, 255, 0, 63)); //0b111111
  newB = round(map(b, 0, 255, 0, 31)); //0b11111
  hexOut = (newR<<11) | (newG<<5) | newB;
  System.out.printf("16bit conversion output: 0x%x \n", hexOut); 
}

void fromPICColor(String toConvert) {
  // Do conversion from 16 bit:
  int pic16color = unhex(toConvert);
  int r = (pic16color >> 11) & 0x1F;
  int g = (pic16color >> 5) & 0x3F;
  int b = (pic16color) & 0x1F;
  
  int newR = round(map(r, 0, 31, 0, 255));
  int newG = round(map(g, 0, 63, 0, 255));
  int newB = round(map(b, 0, 31, 0, 255));
  System.out.printf("24bit conversion output: %d, %d, %d \n", newR, newG, newB);
  System.out.printf("24bit conversion output: #%s%s%s \n", hex(newR, 2), hex(newG, 2), hex(newB, 2));
  
}

void setup() {
  size(100, 100);
    System.out.printf("Data: \n");
    
    // Convert "normal" color to "PIC" color:
    //color toConvert = #fff000;
    color normalColor = color(35, 35, 35);
    toPICColor(normalColor);
    
    // Convert "PIC" color to "normal" color:
    // THIS IS NOT ENTIRELY ACCURATE!!!!!!!!!
    String picColor = "4208"; // without the "0x" on the hex string...
    //fromPICColor(picColor);
}
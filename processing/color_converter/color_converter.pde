// This program will convert 24 bit color that we're all used to
// down to either 8bit or 16 bit versions.
//
// NOTE: This is configured ONLY for PIC24F Microcontrollers!
// If you're using some other system, these results will be wrong!

void setup() {
  size(100, 100);
    System.out.printf("Data: \n");
    //color toConvert = #fff000;
    color toConvert = color(192, 0, 0);
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
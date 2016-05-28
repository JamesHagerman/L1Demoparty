PImage sprite;
String imageFilename = "l1_logo.bmp";
String paletteFilename = "birdpallet.pal";

String[] loadPalette(String filename) {
  String toRet[] = {};
  byte b[] = loadBytes(filename); 
  
  for (int i = 0, j=0; i < b.length; i+=3, j++) {
    int aColor = ( (b[i]&0xff)<<16 ) | ( (b[i+1]&0xff)<<8) | b[i+2]&0xff ;
    toRet = append(toRet, hex(aColor, 6));
    //System.out.printf("%d: 0x%s\n", j, hex(aColor, 6));
  }
  return toRet;
}


void setup() {
  size(100, 100);
  
  String palette[] = loadPalette(paletteFilename);
  
  sprite = loadImage(imageFilename);
  sprite.loadPixels();
  
  int w = sprite.width;
  int h = sprite.height;
  
  int pixelCount = w*h;
  
  System.out.printf("This sprite is: %sx%s and has %s pixels total.\n", w, h, pixelCount);
  
  
  System.out.printf("Data: \n");
  System.out.printf("// %d x %d %s \n", w, h, imageFilename);
  System.out.printf("0x%x, // width\n", w);
  System.out.printf("0x%x, // height\n", h);
  System.out.printf("0x%x, // bitres\n", 0x8);
  System.out.printf("0x%x, // transparent color\n", 0xa);
  System.out.printf("0x%x, // rotate\n", 0x00);
  for (int i = 0; i < pixelCount; i++) {
    color thisPixel = sprite.pixels[i];
    

    // PALETTE LOOKUP:
    //int r = (thisPixel) >> 16 & 0xFF;
    //int g = (thisPixel) >> 8 & 0xFF;
    //int b = (thisPixel) & 0xFF;

    //int hexOut = 0;
    //String toFind = hex(  ((r & 0xff)<<16) | ((g & 0xff)<<8) | b&0xff, 6);
    
    ////System.out.printf("Looking for: %s\n", toFind);
    //for (int j = 0; j < palette.length; j++ ) { 
    //  if ( toFind.equals(palette[j]) ) {
    //      //System.out.printf(" Found at: %d, %s\n", j, palette[j]);
    //      hexOut = j;
    //      break;
    //  }
    //}
    
    
    
    // WITHOUT CLUT: 
    float r = red(thisPixel);
    float g = green(thisPixel);
    float b = blue(thisPixel);
    // Map the 24 bit colors of the sprite down to 8bpp
    int newR = round(map(r, 0, 255, 0, 7));
    int newG = round(map(g, 0, 255, 0, 7));
    int newB = round(map(b, 0, 255, 0, 3));
    
    int hexOut = (newR<<5) | (newG<<2) | newB;

    // WITH CLUT:
    // Map the 24 bit colors of the sprite down to 16 bit since the CLUT is ALWAYS 16 bit.
//    int newR = round(map(r, 0, 255, 0, 31)); //0b11111
//    int newG = round(map(g, 0, 255, 0, 63)); //0b111111
//    int newB = round(map(b, 0, 255, 0, 31)); //0b11111
//    
//    int hexOut = (newR<<11) | (newG<<5) | newB;
        
//    System.out.printf("pixel %s is:\t %.2f\t %.2f\t %.2f \t\t %s\t %s\t %s \t\t %x\n", i, r, g, b, newR, newG, newB, hexOut);
//    System.out.printf("index: %s \t divisor: %s\n", i, i%w);

//    System.out.printf("%x", hexOut);



    if (i%w == 0 && i>0) {
      System.out.printf("\n0x%x, ", hexOut);
    } else {
      if (i != pixelCount-1) {
        System.out.printf("0x%x, ", hexOut);
      } else {
        System.out.printf("0x%x", hexOut);
      }
    }
    
  }
  
}

void draw() {
  image(sprite, 0, 0);
}
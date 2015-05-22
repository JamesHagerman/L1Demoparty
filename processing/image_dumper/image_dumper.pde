PImage sprite;
String filename = "catsprite.gif";

void setup() {
  size(100, 100);
  sprite = loadImage(filename);
  sprite.loadPixels();
  
  int w = sprite.width;
  int h = sprite.height;
  
  int pixelCount = w*h;
  
  System.out.printf("This sprite is: %sx%s and has %s pixels total.\n", w, h, pixelCount);
  
  
  System.out.printf("Data: \n");
  System.out.printf("// %d x %d %s \n", w, h, filename);
  System.out.printf("0x%x // width\n", w);
  System.out.printf("0x%x // height\n", h);
  System.out.printf("0x%x // bitres\n", 0x8);
  System.out.printf("0x%x // transparent color\n", 0xe3);
  System.out.printf("0x%x // rotate\n", 0x00);
  for (int i = 0; i < pixelCount; i++) {
    color thisPixel = sprite.pixels[i];
    float r = red(thisPixel);
    float g = green(thisPixel);
    float b = blue(thisPixel);
        
    // Map the 24 bit colors of the sprite down to 8bpp
    int newR = round(map(r, 0, 255, 0, 7));
    int newG = round(map(g, 0, 255, 0, 7));
    int newB = round(map(b, 0, 255, 0, 3));
    
    int hexOut = (newR<<5) | (newG<<2) | newB;
        
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

void setup() {
  
  int tableSize = 256;
  size(256, 255, P3D);
  
  int w = 8; // just how much wrapping we apply to the output;
  int zeroDb = 255/2;
  
  float val = 0;
  int hexOut = 0x30;
  
  for (int i = 0; i < tableSize; i++ ) {
    
    // Draw our sine:
    //float degrees = map(i, 0, tableSize, 0, 360);
    //val = (255/2)*cos(radians(degrees-90));
    //point(i, zeroDb - val);
    //hexOut = round(map(val, -(255/2), (255/2), 0, 255)); // Convert our height to a 0-255 range int:
    
    
    // ZigZag
    //int iAdj = round(map(i, 0, tableSize, 0, 255));
    //if (i <= tableSize/2) {
    //  val = 255-iAdj;
    //} else {
    //  val = iAdj-zeroDb;
    //}
    //point(i, val);
    //hexOut = round(val);

    // Saw
    //int iAdj = round(map(i, 0, tableSize, 0, 255));
    //point(i, iAdj);
    //hexOut = round(iAdj);
    
    // PWM
    int iAdj = round(map(i, 0, tableSize, 0, 255));
    if (i <= tableSize*0.75) {
      val = 255;
    } else {
      val = 0;
    }
    point(i, val);
    hexOut = round(val);

    // Noise
    //int iAdj = round(map(i, 0, tableSize, 0, 255));
    //val = random(0,255);
    //point(i, val);
    //hexOut = round(val);
    
    
    
//    System.out.printf("%f\n", val);
    
    if (i%w == 0 && i>0) {
      System.out.printf("\n0x%x, ", hexOut);
    } else {
      if (i != tableSize-1) {
        System.out.printf("0x%x, ", hexOut);
      } else {
        System.out.printf("0x%x", hexOut);
      }
    }



  }
  
}
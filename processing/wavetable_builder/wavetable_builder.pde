void setup() {
  
  int tableSize = 248;
  size(tableSize, 255, P3D);
  
  int w = 8; // just how much wrapping we apply to the output;
  int zeroDb = 255/2;
  
  float val = 0;
  int hexOut = 0x30;
  
  for (int i = 0; i < tableSize; i++ ) {
    
    // Draw our sine:
//    float degrees = map(i, 0, tableSize, 0, 360);
//    val = (255/2)*sin(radians(degrees-90));
//    point(i, zeroDb - val);

    // Convert our height to a 0-255 range int:
//    hexOut = round(map(val, -(255/2), (255/2), 0, 255));
    
    int iAdj = round(map(i, 0, tableSize, 0, 255));
    
    if (i <= tableSize/2) {
      val = 255-iAdj;
    } else {
      val = iAdj-zeroDb;
    }
    
    point(i, val);
    
    hexOut = round(val);
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



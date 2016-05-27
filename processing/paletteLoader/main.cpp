#include <iostream>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

using namespace std;

const char *filename;
FILE *fileptr;
char *buffer;
long filelen;

unsigned long aColor;

int main(int argc, const char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "usage: paletteLoader <.pal file>\n");
        return 1;
    }
//    else if (strlen(argv[1])) {
//        fprintf(stderr, "Invalid argument '%s'\n", argv[1]);
//        return 2;
//    }


    printf("Welcome to the palette loader!\n");

    filename = argv[1];
    printf("Trying to load: %s\n", filename);

    fileptr = fopen("birdpalette.pal", "rb");
    fseek(fileptr, 0, SEEK_END);          // Jump to the end of the file
    filelen = ftell(fileptr);
    rewind(fileptr);

    printf("File is %li bytes long\n", filelen);

    buffer = (char *)malloc((filelen+1)*sizeof(char));
    fread(buffer, filelen, 1, fileptr); // Read in the entire file
    fclose(fileptr); // Close the file

    long i, j;
    printf("Here are the colors of the pallet:\n");
    for (i = 0, j = 0; i < filelen; i+=3, j++ ) {
//        printf("What the fuck: %x\n", buffer[i]&0xff);
        aColor = (unsigned long) ((buffer[i]&0xff<<16) | (buffer[i+1]&0xff<<8) | buffer[i+2]&0xff);
        printf("%li %06lx\n", j, aColor);
    }


    return 0;
}
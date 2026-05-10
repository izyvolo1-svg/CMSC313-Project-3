#include <stdio.h>
#include <stdlib.h>

//implements a hex dump
int main(){
    //vars for the file, number of bytes per line, actual line
    FILE *binaryFile;
    int numBytes = 16;
    unsigned char line[numBytes];

    //creates var for line read and ascii version
    size_t lineRead;
    unsigned char asciiLine[numBytes];
    
    //tries to open file in rb mode (read binary)
    binaryFile = fopen("binary.out", "rb");

    //checks to see if file found if not prints error message and returns 
    if (binaryFile == NULL) {
        printf("File not found \n");
        return 1;
    }

     //gets current position in binary File
    int position = ftell(binaryFile);

    //keeps reading and printing lines until end of file reached (prints current position, line in hex bytes, line in ascii)
    while ((lineRead = fread(line, 1, numBytes, binaryFile)) > 0) {
        
        //printing current address in binary file
        printf("%08X", position);

        //prints a space for formating reasons
        printf(" ");


        //iterates through each byte and prints it in hex separated by a space
        for (size_t i = 0; i < lineRead; i++) {
            printf("%02X ", line[i]);
            
            //saves ascii char representation of hex byte if printable if not "." is saved
            if(line[i] >= 32 && line[i] <= 126) {
                asciiLine[i] = line[i];
            } else {
                asciiLine[i] = '.';
            }

        }

        // prints | for formating reasons
        printf("|");

        //prints the hex bytes in ascii form with none printable chars printed as .
        for(size_t i = 0; i < lineRead; i++){
        
            printf("%c", asciiLine[i]);
        
        }

        //updates address for next line
        position = ftell(binaryFile);
        
        //end of line reached new line started
        printf("\n");
    }

    //end of file reached close file and return
    fclose(binaryFile);
    return 0;
}

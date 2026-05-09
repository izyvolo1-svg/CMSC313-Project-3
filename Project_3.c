#include <stdio.h>
#include <stdlib.h>

int main(){
    FILE *binaryFile;
    int numBytes = 16;
    unsigned char line[numBytes];

    binaryFile = fopen("binary.out", "rb");

    if (binaryFile == NULL) {
        printf("File not found \n");
        return 1;
    }

    //keeps reading and print lines until end of file reached
    while (fgets(line, sizeof(line), binaryFile) != NULL) {
        
        //gets current position in binary File
        int position = ftell(binaryFile);
        
        //printing current address in binary file
        printf("Address: ");
        printf("%08X", position);
        
        //reads line
        size_t readBytes = fread(line, 1, numBytes, binaryFile);
        
        

        printf(" Bytes: ");

        //iterates through each byte and prints it in hex separated by a space
        for (size_t i = 0; i < readBytes; i++) {
            printf("%02X ", line[i]);
        }

        //end of line reached new line started
        printf("\n");
    }

    //close file and return
    fclose(binaryFile);
    return 0;
}

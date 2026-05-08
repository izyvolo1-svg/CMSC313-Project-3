# CMSC313-Project-3

#Write a C program that outputs a hex dump of the attached file in the format below in Figure 1. The left most column is the number of bytes into the file (i.e. the address) in hex. The #middle are 16 consecutive bytes in hex separated by spaces, and the left most column is the ASCII representation of the bytes with ‘.’ replacing any non-ASCII bytes.
#Compile it with optimization levels -O0, -O1 and -O3 and then compare and discuss the assembly code/data generated (using ‘-S’) by the different optimization levels. 

Example:

00002040 75 6e 74 75 20 31 33 2e 33 2e 30 2d 36 75 62 75 |untu 13.3.0-6ubu|
00002050 6e 74 75 32 7e 32 34 2e 30 34 2e 31 29 20 31 33 |ntu2~24.04.1) 13|00002040 75 6e 74 75 20 31 33 2e 33 2e 30 2d 36 75 62 75 |untu 13.3.0-6ubu|
00002050 6e 74 75 32 7e 32 34 2e 30 34 2e 31 29 20 31 33 |ntu2~24.04.1) 13|

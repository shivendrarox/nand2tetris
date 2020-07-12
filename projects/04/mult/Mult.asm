// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Adds 1+...+100.
@i // i refers to some mem. location.
M=1 // i=1 
@R2 // sum refers to some mem. location.
M=0 // sum=0 
@R1 
D=M
@i
M=D
(LOOP) 
@i
D=M
@END 
D;JEQ // If (i==0) goto END 
@R0 
D=M // D=i 
@R2 
M=D+M // sum=sum+i 
@i 
M=M-1 // i=i-1 
@LOOP 
0;JMP // Goto LOOP 
(END) 
@END 
0;JMP











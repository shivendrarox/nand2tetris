// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(SEE_INPUT)
@KBD
D=M
@FILL_BLACK
D;JNE
//@KBD
//D=M
@FILL_WHITE
D;JEQ
@SEE_INPUT
0;JMP






(FILL_WHITE)
@KBD
D=0
D=A-1
@SCREEN
D=D-A

(LOOP_WHITE)
@SCREEN
A=A+D
M=0
D=D-1
@END
D;JLT
@LOOP_WHITE
0;JMP





@FILL_BLACK
(FILL_BLACK)
D=0
@KBD
D=A-1
@SCREEN
D=D-A

(LOOP_BLACK)
@SCREEN
A=A+D
M=-1
D=D-1
@END
D;JLT
@LOOP_BLACK
0;JMP







(END)
@SEE_INPUT
0;JMP

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


(START)
  @SCREEN
  D=A
  @addr
  M=D

(LOOP)
  @addr
  D=M
  @KBD
  D=D-A
  @START
  D;JEQ
  @KBD
  D=M
  @BLACK
  D;JNE
  @WHITE
  0;JMP


(BLACK)
  D=-1
  @DRAW
  0;JMP

(WHITE)
  D=0
  @DRAW
  0;JMP

(DRAW)
  @addr
  A=M
  M=D
  @addr
  M=M+1
  @LOOP
  0;JMP

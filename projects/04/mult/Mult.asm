// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//SETUP OF R0 and R1
// @R0
// M=0
// @R1
// M=0
// @R1
// M=0

@R2
M=0

//start of program
@R0
D=M
@count
M=D

@END
D;JEQ

@sum
M=0

(LOOP)
  @R1
  D=M

  @sum
  D=D+M

  @sum
  M=D

  @count
  M=M-1

  @count
  D=M

  @LOOP
  D;JGT

  @sum
  D=M

  @R2
  M=D
(END)

  @END
  0;JEQ

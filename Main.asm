.data
mystring: .asciiz "\n"
.text
.section 0x00000000
start:
  li a1,1
  li a2,2
  li a3,3
  li a4 4
  li a0,0
  li a7,5
  ecall
  beq a1,a0, addition
  beq a2,a0, subtraction
  beq a3,a0, multiplication
  beq a4,a0, division
addition:
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,2(zero)
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,10(zero)
  la a0,mystring
  li a7,4
  ecall
  lw a1,10(zero)
  lw a0,2(zero)
  add a1,a0,a1
  mv a0,a1
  li a7,1
  ecall
  j start
subtraction:
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,2(zero)
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,10(zero)
  la a0,mystring
  li a7,4
  ecall
  lw a1,10(zero)
  lw a0,2(zero)
  sub a1,a0,a1
  mv a0,a1
  li a7,1
  ecall
  j start
multiplication:
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,2(zero)
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,10(zero)
  la a0,mystring
  li a7,4
  ecall
  lw a1,10(zero)
  lw a0,2(zero)
  mul a1,a0,a1
  mv a0,a1
  li a7,1
  ecall
  j start
division:
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,2(zero)
  la a0,mystring
  li a7,4
  ecall
  li a7,5
  li a0,0
  ecall
  sw a0,10(zero)
  la a0,mystring
  li a7,4
  ecall
  lw a1,10(zero)
  lw a0,2(zero)
  div a1,a0,a1
  mv a0,a1
  li a7,1
  ecall
  la a0,mystring
  li a7,4
  ecall
  lw a1,10(zero)
  lw a0,2(zero)
  rem a1,a0,a1
  mv a0,a1
  li a7,1
  ecall
  la a0,mystring
  li a7,4
  ecall
  j start

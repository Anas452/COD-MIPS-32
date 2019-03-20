.data

    number1: .asciiz "Enter some integer value for x followed by enter: "
    number2: .asciiz "Enter some integer value for y followed by enter: "
    number3: .asciiz "Enter some integer value for z followed by enter: "
    result: .asciiz "Result of xy+z-12 is "

.text
.globl main
.ent main

main:

  li $v0,4
  la $a0,number1
  syscall

  li $v0,5
  syscall
  move $t1,$v0

  li $v0,4
  la $a0,number2
  syscall

  li $v0,5
  syscall
  move $t2,$v0

  li $v0,4
  la $a0,number3
  syscall

  li $v0,5
  syscall
  move $t3,$v0

  sub $t4,$t1,$t2

  add $t5,$t4,$t3

  addi $t6,$t5,-12

  li $v0,4
  la $a0,result
  syscall

  li $v0,1
  move $a0,$t6
  syscall
  
  li $v0,10
  syscall

  jr $ra

.end main

.data 

      number1: .asciiz "Enter First Integer: "
      number2: .asciiz "Enter Second Integer: "
      result: .asciiz "Product is: "

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

    mult $t1,$t2
    mflo $t3

    li $v0,4
    la $a0,result
    syscall

    li $v0,1
    move $a0,$t3
    syscall

    li $v0,10
    syscall

    jr $ra

  .end main

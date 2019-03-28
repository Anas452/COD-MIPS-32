.data 

      Dividend: .asciiz "Enter Divident: "
      Divisor: .asciiz "Enter Divisor: "
      result1: .asciiz "Qoutient is: "
      result2: .asciiz "  and Remiander is: "

.text
.globl main
.ent main

main:

    li $v0,4
    la $a0,Dividend
    syscall

    li $v0,5
    syscall
    move $t1,$v0

    li $v0,4
    la $a0,Divisor
    syscall

    li $v0,5
    syscall
    move $t2,$v0

    div $t1,$t2
    mflo $t3
    mfhi $t4

    li $v0,4
    la $a0,result1
    syscall

    li $v0,1
    move $a0,$t3
    syscall

    li $v0,4
    la $a0,result2
    syscall
    
    li $v0,1
    move $a0,$t4
    syscall

    li $v0,10
    syscall

    jr $ra

.end main


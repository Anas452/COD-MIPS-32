.data

    msg1: .asciiz "Enter the number : "
    msg2: .asciiz "\nYour Answer in 2's Complement: "

  .text
.globl main
.ent main

main:

    li $v0,4
    la $a0,msg1
    syscall

    li $v0,5
    syscall
    move $t0,$v0

    nor $s1,$t0,$t0
    addi $s2,$s1,1

    li $v0,4
    la $a0,msg2
    syscall

    li $v0,1
    move $a0,$s2
    syscall
    
    li $v0,10
    syscall

    jr $ra

.end main

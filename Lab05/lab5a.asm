.data

    Integer: .asciiz "Enter Some Integer: "
    Even:.asciiz "The Number is Even "
    Odd: .asciiz "The Number is Odd "

.text
.globl main
.ent main
main:

    li $v0,4
    la $a0,Integer
    syscall

    li $v0,5
    syscall
    move $t0,$v0

    addi $t1,$0,2

    div $t0,$t1
    mfhi $t2

    beq $t2,$0,EVEN
    j ODD

EVEN:
    li $v0,4
    la $a0,Even
    syscall
    jr $ra

ODD:
    li $v0,4
    la $a0,Odd
    syscall
    jr $ra

    li $v0,10
    syscall

    jr $ra

.end main
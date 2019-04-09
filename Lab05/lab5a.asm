.data

    CEP: .asciiz "Enter marks obtained in CEP: "
    DLP: .asciiz "What was the difficulty of this project?: "
    CEPmarks: .asciiz "CEP marks are: "

.text
.globl main
.ent main
main:

    li $v0,4
    la $a0,CEP
    syscall

    li $v0,5
    syscall
    move $s0,$v0

    li $v0,4
    la $a0,DLP
    syscall

    li $v0,5
    syscall
    move $s1,$v0

    slt $t1,$s1,3
    bne $t1,$0,label
    addi $s0,$s0,5
    j out

label:
    li $v0,4
    la $a0,CEPmarks
    syscall

out:
    li $v0,4
    la $a0,CEPmarks
    syscall

    li $v0,1
    move $a0,$s0
    syscall

    li $v0,10
    syscall

    jr $ra

.end main

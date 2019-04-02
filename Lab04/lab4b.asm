.data 
    var: .word 9, 5

    Celcius: .asciiz "Enter Temperature In Celcius: "
    Faheriniet: .asciiz "The Temperature in Faherimiet: "

.text
.globl main
.ent main

main:

    li $v0,4
    la $a0,Celcius
    syscall

    li $v0,5
    syscall
    move $t1,$v0

    # addi $t2,$zero,9
    # addi $t3,$zero,5
    la $t0,var

    lw $t2 ,0($t0)
    mult $t1,$t2
    mflo $t3

    
    
    
    lw $t4,4($t0)
    addi $t3,$t3,2
    div $t3,$t4
    mflo $t5

    addi $t5,$t5,32
    
    li $v0,4
    la $a0,Faheriniet
    syscall

    li $v0,1
    move $a0,$t5
    syscall

    li $v0,10
    syscall

    jr $ra

.end main

.data 
    var: .word 30, 20
    Temperature: .asciiz "Enter Temperature of th  day: "
    input: .asciiz "Temperature is : "
    hot: .asciiz "\nit is hot "
    pleasant: .asciiz "\nIts pleasent tody"
    cold: .asciiz "\nIts cold today"
   

.text
.globl main
.ent main

main:

    li $v0,4
    la $a0,Temperature
    syscall

    li $v0,5
    syscall
    move $t0,$v0

    li $v0,4
    la $a0,input
    syscall

    
    li $v0,1
    move $a0,$t0
    syscall

    la $s0,var
    
    lw $s1,0($s0)
    lw $s2,4($s0)
    
    slt $t1,$s1,$t0
    bne $t1,$0,Hot
    j next				

    
    

Hot: 
    li $v0,4
    la $a0,hot
    syscall
    jr $ra

next:
    slt $t2,$t0,$s1
    bne $t2,$0, label
    label: slt $t3,$s2,$t0
    bne $t3,$0,PLEASANT
    j next2

PLEASANT:
    li $v0,4
    la $a0,pleasant
    syscall
    jr $ra

next2:
    slt $t4, $s2,$t0
    beq $t4,$0,COLD

COLD:
    li $v0,4
    la $a0, cold
    syscall
    jr $ra

    

    li $v0,10
    syscall

    jr $ra

.end main

    
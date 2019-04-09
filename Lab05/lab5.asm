.data 
    var: .word 30, 20
    Temperature: .asciiz "Enter Temperature of th  day: "
    input: .asciiz "Temperature is : "
    hotts: .asciiz "it is hot "
   

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
    
    slt $t1,$s0,$t0
    bne $t1,$0,hot
    j		out				

    
    

hot: 
    li $v0,4
    la $a0,hotts
    syscall

out1:
    slt $t2,$t0,$s1
    

    li $v0,10
    syscall

    jr $ra

.end main

    
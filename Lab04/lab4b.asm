.data 

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

    addi $t2,$zero,9
    addi $t3,$zero,5

    div $t2,$t3
    mflo $t4

    mul $t5,$t1, $t4			
    # mflo	$t5					

    mul $t6,$t5,32

    li $v0,4
    la $a0,Faheriniet
    syscall

    li $v0,1
    move $a0,$t6
    syscall

    li $v0,10
    syscall

    jr $ra

.end main

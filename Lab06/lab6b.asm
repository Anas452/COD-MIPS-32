.data 
      Input: .asciiz "enter any integer n: "
      prime: .asciiz "the number n is prime"
      composite: .asciiz "the number n is composite"

.text
.globl main
.ent main
main:

    li $v0,4
    la $a0,Input
    syscall
    
    li $v0,5
    syscall
    move $t0,$v0

    addi $t1,$0,1

    beq $t0,$t1,Comp

    add $t2,$0,$0

    addi $t3,$0,2

    div $t0,$t3
    mflo $t4

loop: slt $t5,$t3,$t4
      beq $t5,$0,Prime
      div $t0,$t3
      mfhi $t6

      beq $t6,$0,Comp

      addi $t3,$t3,1

      j loop

Comp: li $v0,4
      la $a0,composite
      syscall

      li $v0,10
      syscall
      jr $ra

Prime:  li $v0,4
        la $a0,prime
        syscall

        li $v0,10
        syscall
        jr $ra

.end main
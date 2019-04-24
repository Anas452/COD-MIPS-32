.data 
      Input: .asciiz "enter positive integer n: "
      Result: .asciiz "the factorial of n is : "

.text
.globl main
.ent main
main:

Neg:  li $v0,4
      la $a0,Input
      syscall
      
      li $v0,5
      syscall
      move $t0,$v0

      addi  $t1,$0,1

      slt $t2,$t0,$0
      
      bne $t2,$0,Neg

Pos:  slt $t3,$0,$t0
      beq $t3,$0,Proced

      mult $t1,$t0
      mflo $t1

      addi $t0,$t0,-1
      j Pos

Proced: li $v0,4
        la $a0,Result
        syscall

        li $v0,1
        move $a0,$t1
        syscall

        jr $ra
     

        li $v0,10
        syscall
        jr $ra

      
.end main

    

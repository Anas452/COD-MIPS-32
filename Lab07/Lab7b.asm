.data 
      Num1: .asciiz "Enter The First Number : "
      Num2: .asciiz "enter the Second Number : "
      Num3: .asciiz "Enter the Third Number : "
      Result: .asciiz "The Result is : "

.text
.globl main
.ent main
main:
      li $v0,4
      la $a0,Num1
      syscall

      li $v0,5
      syscall
      move $a1,$v0

      li $v0,4
      la $a0,Num2
      syscall

      li $v0,5
      syscall
      move $a2,$v0

      li $v0,4
      la $a0,Num3
      syscall

      li $v0,5
      syscall
      move $a3,$v0

      jal AVERAGE

      move $t1,$v0

      li $v0,4
      la $a0,Result
      syscall

      li $v0,1
      move $a0,$t1
      syscall

      li $v0,10
      syscall
      jr $ra
      
.end main

.globl AVERAGE
.ent AVERAGE
AVERAGE:

      move $s0,$a1
      move $s1,$a2
      move $s2,$a3

      add $s3,$s0,$s1
      add $s4,$s3,$s2
      addi $s5,$0,3

      div $s4,$s5
      mflo $s6

      move $v0,$s6

      jr $ra

.end AVERAGE
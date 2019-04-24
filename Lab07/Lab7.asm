.data 
      Input: .asciiz "Enter The Operation You Want 
      to Perform(ADDITION1,SUB2,MULT3,DIV4): "
      Num1: .asciiz "Enter The First Number : "
      Num2: .asciiz "enter the Second Number : "
      Result: .asciiz "The Result is : "

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

      li $v0,4
      la $a0,Num1
      syscall

      li $v0,5
      syscall
      move $t1,$v0

      li $v0,4
      la $a0,Num2
      syscall

      li $v0,5
      syscall
      move $t2,$v0

      addi $t3,$t3,1
      addi $t4,$t4,2
      addi $t5,$t5,3
      addi $t6,$t6,4

      beq $t0,$t3,ADD
      beq $t0,$t4,SUB
      beq $t0,$t5,MULT
      beq $t0,$t6,DIV

.end main
      
ADD:  add $s0,$t1,$t2

      jal ADD_Result
      jr $ra

SUB:  sub	$s1,$t1,$t2

      jal SUB_Result
      jr $ra

MULT: mult $t1,$t2
      mflo $s2

      jal MULT_Result
      jr $ra

DIV:  div	$t1,$t2			# $t0 / $t1
      mflo $s3
      
      jal DIV_Result
      jr $ra

ADD_Result:  
      li $v0,4
      la $a0,Result
      syscall

      li $v0,1
      move $a0,$s0
      syscall
      
      li $v0,10
      syscall
      jr $ra


SUB_Result:  
      li $v0,4
      la $a0,Result
      syscall

      li $v0,1
      move $a0,$s1
      syscall

      li $v0,10
      syscall
      jr $ra


MUL_Result:  
      li $v0,4
      la $a0,Result
      syscall

      li $v0,1
      move $a0,$s2
      syscall

      li $v0,10
      syscall
      jr $ra

Div_Result:  
      li $v0,4
      la $a0,Result
      syscall

      li $v0,1
      move $a0,$s3
      syscall

      li $v0,10
      syscall
      jr $ra



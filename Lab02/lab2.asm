.data
	msg1: .asciiz "Enter the first number followed by enter: "
	msg2: .asciiz "\nEnter the second number followed by enter: "
	msg3: .asciiz "\nThe result of addition is: "
.text
.globl main
.ent main
main:
	li $v0,4 	
	la $a0,msg1
	syscall 	
	
	li $v0,5 	
	syscall 
	move $t1,$v0 

	li $v0,4 
	la $a0,msg2
	syscall 

	li $v0,5 
	syscall 
	move $t2,$v0
	
	add $t3,$t1,$t2

	li $v0,4 
	la $a0,msg3
	syscall 
	
	li $v0,1 
	move $a0,$t3 
	syscall 
	
	li $v0,10
	syscall 
	
	jr $ra
.end main
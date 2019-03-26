.data 

	msg1: .asciiz "enter your name: "
	msg2: .asciiz "\nenter your age: "
	msg3: .asciiz "\n***Welcome*** "
	msg4: .asciiz "You are  "
	name: .asciiz " year old,stay blessed***"

.text
.globl main
.ent main

main:

	#for name input
	li $v0 ,4
	la $a0 ,msg1
	syscall

	li $v0,8
	syscall

	#for age input
	li $v0,4
	la $a0,msg2
	syscall

	li $v0,5
	syscall
	move $t2,$v0

	#for Welcome name
	li $v0,4
	la $a0,msg3
	syscall

	li $v0,4
	la $a0,msg1
	syscall

	#for age output
	li $v0,4
	la $a0,msg4
	syscall
	
	li $v0,1
	move $a0,$t2
	syscall

	#for last msg 
	li $v0,4
	la $a0,name
	syscall
	
	li $v0,10
	syscall

	jr $ra

.end main
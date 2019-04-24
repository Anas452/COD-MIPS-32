.data 
      Num: .asciiz "Enter the Integer : "
      Power: .asciiz "Enter The Power : "
      Result: .asciiz "The Result is : "

.text
.globl main
.ent main
main:

    li $v0,4
    la $a0,Num
    syscall

    li $v0,5
    syscall
    move $a0,$v0


    li $v0,4
    la $a0,Power
    syscall

    li $v0,5
    syscall
    move $a1,$v0

    jal power

    move $t2,$v0
    
    li $v0,4
    la $a0,Result
    syscall
    
    li $v0,1
    move $a0,$t2
    syscall

.end main



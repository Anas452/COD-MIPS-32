.data 
      Input: .asciiz "enter n number: "
      Result: .asciiz "the sum is : "

.text
.globl main
.ent main
main:

    li $v0,4
    la $a0,Input
    syscall
    
    li $v0,5
    syscall
    move $t0,$v0 #n input 

    add $t1,$0,$0 #sum 
    addi $t2,$t2,1 #i
    

loop:
    slt $t3,$t2,$t0 
    add $t1,$t1,$t2
    addi $t2,$t2,1
    beq $t3,$0,goto
    j loop

goto:
    li $v0,4
    la $a0,Result
    syscall

    li $v0,1
    move $a0,$t1
    syscall

    jr $ra

.end main

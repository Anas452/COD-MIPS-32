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

POWER:
    
    addi $sp,$sp,-12
    sw $s0,0($sp)
    sw $s1,4($sp)
    sw $s2,8($sp)
    sw $s3,12($sp)


    move $s0,$a0
    move $s1,$a1

    addi $s2,$0,0
    addi $s3,$0,1

loop:   slt $t0,$s2,$s1
        beq $t0,$0,OUT
        mult $s0,$s3
        mflo $s3
        addi $s2,$0,1
        j loop

OUT: move $v0,$s3

    


.end main



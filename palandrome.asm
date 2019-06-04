.data 
      Input: .asciiz "Enter The Text : "
      Result1: .asciiz "It is a Palandrome : "
      Result2: .asciiz "It is not a Palandrome : "
      Result: .asciiz "The mirroor image is  : "

.text
.globl main
.ent main
main:
      li $v0,4
      la $a0,Input
      syscall

      li $v0,5
      syscall
      move $a1,$v0

      jal PALANDROME

      move $t2,$v0

.end main

PALANDROME:

      


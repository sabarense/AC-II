# Exercicio 19

.data
x: .word 0xFFFFF 
y: .word 0xFFFFF 

.text
lui $t0, 0x1001

lw $s0, 0($t0)
lw $s1, 4($t0)

ori $t6, $zero, 32
ori $t7, $zero, 1

or $t1, $zero, $s0
ori $t2, $zero, 31 

or $t4, $zero, $t1
loop:
bne $t5, $zero, repetir
srl $t5, $t4, 31
beq $t5, $t7, repetir
sll $t4, $t4, 1
addi $t6, $t6, -1
j loop
 
repetir:
beq $t1, $s1, final_quantidade_bits_sig
or $t0, $zero, $t6
or $t1, $zero, $s1
or $t4, $zero, $t1
or $t5, $zero, $zero
ori $t6, $zero, 32

j loop

final_quantidade_bits_sig:
or $t1, $zero, $t6
ori $t6, $zero, 32


mult $s0, $s1

add $t4, $t0, $t1

slt $t4, $t4, $t6

beq $t4, $zero, maior_32
mflo $s2
j fim


maior_32:
mfhi $s2
mflo $s3

fim:





# Exercicio 21

.data
x: .word 2

.text
lui $t0, 0x1001

lw $s0, 0($t0) # valor de x

mult $s0, $s0
mflo $s2 # resultado da multi x²

mult $s2, $s0
mflo $s3 # resultado da multi x³

mult $s3, $s0
mflo $s4 # resultado da multi x^4

mult $s4, $s0
mflo $s5 # resultado da multi x^5

slt $t1, $s0, $zero
beq $t1, $zero, maior
j menor

maior:
addi $t2, $s3, 1
sw $t2, 4($t0)
j fim

menor:
addi $t3, $s4, 0xFFFFFFFF
sw $t3, 4($t0)

fim:





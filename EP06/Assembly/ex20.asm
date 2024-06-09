# Exercicio 20

.data
x: .word 3

.text
lui $t0, 0x1001
ori $t1, $zero, 2

lw $s0, 0($t0)

div $s0, $t1
mfhi $s1

mult $s0, $s0
mflo $s2 # resultado da multi x²

mult $s2, $s0
mflo $s3 # resultado da multi x³

mult $s3, $s0
mflo $s4 # resultado da multi x^4

mult $s4, $s0
mflo $s5 # resultado da multi x^5

beq $s1, $zero, primeira_parte
j segunda_parte

primeira_parte:
add $t2, $s4, $s3

mult $t1, $s2
mflo $s6 # 2*x²

sub $t3, $t2, $s6
sw $t3, 4($t0)
j fim

segunda_parte:
sub $t4, $s5, $s3
addi $s7, $t4, 1
sw $s7, 4($t0)

fim:





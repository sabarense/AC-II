# Exercicio 13

.data
A: .word -100

.text
ori $t0, $zero, 1

lui $t1, 0x1001

lw $t3, 0($t1)

srl $t2, $t3, 31

beq $t0, $t2, negativo
j escrita

negativo:
sub $t3, $zero, $t3

escrita:
sw $t3 0($t1)

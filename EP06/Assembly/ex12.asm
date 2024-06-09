# Exercicio 12

.data
x: .word 10
p: .word 0
pp: .word 0
ppp: .word 0

.text
lui $t0, 0x1001 # endereco do inteiro
addi $t1, $t0, 4
addi $t2, $t0, 8
addi $t3, $t0, 12

sw $t0, 4($t0)
sw $t1, 8($t0)
sw $t2, 12($t0)


lw $t1, 0($t3)
lw $t1, 0($t1)
lw $t1, 0($t1)
lw $t1, 0($t1)

sll $t1, $t1, 1

lw $t2, 0($t3)
lw $t2, 0($t2)
lw $t2, 0($t2)
sw $t1, 0($t2)


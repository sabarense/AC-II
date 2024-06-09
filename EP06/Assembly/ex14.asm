# Exercicio 14

.data
A: .word 22

.text
lui $t0, 0x1001

lw $t1, 0($t0)

ori $t2, $zero, 1

and $t3, $t1, $t2

sw $t3, 4($t0)




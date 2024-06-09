# Exercicio 15

.text
ori $t0, $zero, 100
ori $t1, $zero, 0
ori $t6, $zero, 1
lui $t5, 0x1001
add $t7, $zero, $t5

loop:
beq $t0,$zero, parte2
sll $t2, $t1, 1
add $t2, $t2, $t6
sw $t2, 0($t7)

addi $t7, $t7, 4
sub $t0, $t0, $t6
add $t1, $t1, $t6
j loop

parte2:
ori $t0, $zero, 100
ori $t2, $zero, 0
soma:
beq $t0, $zero, fim
lw $t1, 0($t5)
add $t2, $t1, $t2

addi $t5, $t5, 4
sub $t0, $t0, $t6
j soma

fim:
 

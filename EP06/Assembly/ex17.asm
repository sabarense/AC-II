# Exercicio 17

.data
x: .word 10
y: .word 200

.text

lui $t0, 0x1001
lw $t1, 0($t0)
lw $t2, 4($t0)
ori $t3, $zero, 1

loop:
beq $t2, $zero, fim
sub $t2, $t2, $t3
add $t4, $t4, $t1
j loop
fim:
sw $t4, 8($t0)




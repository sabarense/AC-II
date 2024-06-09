# Exercicio 11

.data
x: .word 100000
z: .word 200000
y: .word 0 

.text

lui $t0, 0x1001

lw $s0, 0($t0)
lw $s1, 4($t0)

sub $s3, $s0, $s1

ori $t1, $zero, 37500
sll $s4, $t1, 3

add $s5, $s3, $s4

sw $s5, 8($t0)



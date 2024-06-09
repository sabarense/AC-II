# Exercício 9

#inicio

.text
.globl main

main:

# Atribuições
.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
soma: .word -1

.text
lui $t0, 0x1001

lw $s0, 0($t0)
lw $s1, 4($t0)
lw $s2, 8($t0)
lw $s3, 12($t0)

add $t1, $s0, $s1
add $t1, $t1, $s2
add $t1, $t1, $s3

sw $t1, 16($t0)

#fim



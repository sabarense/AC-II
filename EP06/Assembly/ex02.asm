# Exercício 2

#inicio

.text
.globl main

main:

# Atribuições
ori $s0, $zero, 1 # x = 1

add $t0, $t0, $s0 # x
add $t0, $t0, $s0 # 2x
add $t0, $t0, $s0 # 3x
add $t0, $t0, $s0 # 4x
add $t0, $t0, $s0 # 5x

addi $s1, $t0, 15 # y = 5*x + 15; 

	
#fim
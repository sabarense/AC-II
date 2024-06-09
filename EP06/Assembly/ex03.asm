# Exercício 3

#inicio

.text
.globl main

main:

# Atribuições
ori $s0, $zero, 3 # x = 3
ori $s1, $zero, 4 # y = 4

add $t0, $s0, $s0 # 2x
add $t0, $t0, $s0 # 3x
add $t0, $t0, $s0 # 4x
add $t0, $t0, $s0 # 5x
add $t0, $t0, $s0 # 6x
add $t0, $t0, $s0 # 7x
add $t0, $t0, $s0 # 8x
add $t0, $t0, $s0 # 9x
add $t0, $t0, $s0 # 10x
add $t0, $t0, $s0 # 11x
add $t0, $t0, $s0 # 12x
add $t0, $t0, $s0 # 13x
add $t0, $t0, $s0 # 14x
add $t0, $t0, $s0 # 15x

add $t1, $s1, $s1 # 2y
add $t1, $t1, $s1 # 3y
add $t1, $t1, $s1 # 4y
add $t1, $t1, $s1 # 5y
add $t1, $t1, $s1 # 6y
add $t1, $t1, $s1 # 7y
add $t1, $t1, $s1 # 8y
add $t1, $t1, $s1 # 9y
add $t1, $t1, $s1 # 10y
add $t1, $t1, $s1 # 11y
add $t1, $t1, $s1 # 12y
add $t1, $t1, $s1 # 13y
add $t1, $t1, $s1 # 14y
add $t1, $t1, $s1 # 15y
add $t1, $t1, $s1 # 16y
add $t1, $t1, $s1 # 17y
add $t1, $t1, $s1 # 18y
add $t1, $t1, $s1 # 19y
add $t1, $t1, $s1 # 20y
add $t1, $t1, $s1 # 21y
add $t1, $t1, $s1 # 22y
add $t1, $t1, $s1 # 23y
add $t1, $t1, $s1 # 24y
add $t1, $t1, $s1 # 25y
add $t1, $t1, $s1 # 26y
add $t1, $t1, $s1 # 27y
add $t1, $t1, $s1 # 28y
add $t1, $t1, $s1 # 29y
add $t1, $t1, $s1 # 30y
add $t1, $t1, $s1 # 31y
add $t1, $t1, $s1 # 32y
add $t1, $t1, $s1 # 33y
add $t1, $t1, $s1 # 34y
add $t1, $t1, $s1 # 35y
add $t1, $t1, $s1 # 36y
add $t1, $t1, $s1 # 37y
add $t1, $t1, $s1 # 38y
add $t1, $t1, $s1 # 39y
add $t1, $t1, $s1 # 40y
add $t1, $t1, $s1 # 41y
add $t1, $t1, $s1 # 42y
add $t1, $t1, $s1 # 43y
add $t1, $t1, $s1 # 44y
add $t1, $t1, $s1 # 45y
add $t1, $t1, $s1 # 46y
add $t1, $t1, $s1 # 47y
add $t1, $t1, $s1 # 48y
add $t1, $t1, $s1 # 49y
add $t1, $t1, $s1 # 50y
add $t1, $t1, $s1 # 51y
add $t1, $t1, $s1 # 52y
add $t1, $t1, $s1 # 53y
add $t1, $t1, $s1 # 54y
add $t1, $t1, $s1 # 55y
add $t1, $t1, $s1 # 56y
add $t1, $t1, $s1 # 57y
add $t1, $t1, $s1 # 58y
add $t1, $t1, $s1 # 59y
add $t1, $t1, $s1 # 60y
add $t1, $t1, $s1 # 61y
add $t1, $t1, $s1 # 62y
add $t1, $t1, $s1 # 63y
add $t1, $t1, $s1 # 64y
add $t1, $t1, $s1 # 65y
add $t1, $t1, $s1 # 66y
add $t1, $t1, $s1 # 67y

add $t3, $t0, $t1 # j = 15*x + 67*y
addi $t3, $t3, 4 # 4*j

#fim
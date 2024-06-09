# Exercício 4

#inicio

.text
.globl main

main:

# Atribuições
ori $s0, $zero, 3 # x = 3
ori $s1, $zero, 4 # y = 4

sll $t0, $s0, 4 # t0 = 16
sub $t0, $t0, $s0 # t0 = 15x 

sll $t1, $s1, 6 #t1 = 64y
sll $t2, $s1, 1 #t1 = 2y
add $t2, $s1, 1 #t2 = 3y
add $t1, $t1, $t2 #t1 = 67y

add $t0, $t0, $t1 #t0 = 15x+67y
sll $s2, $t0, 2 # z = 4 * t0


#fim

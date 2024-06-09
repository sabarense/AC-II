# Exercício 6

#inicio

.text
.globl main

main:

# Atribuições

ori $t0, $zero, 0x7FFF
sll $t0, $t0, 16
ori $s0, $t0, 0xFFFF #$s0 = maior inteiro possivel

ori $t1, $zero, 0x493E
sll $s1, $t1, 4 #s1 = 300 000

sll $t2, $s1, 2 #t2 = 1 200 000
sub $s2, $s0, $t2

#fim

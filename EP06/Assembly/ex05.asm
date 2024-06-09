# Exercício 5

#inicio

.text
.globl main

main:

# Atribuições

# x = 100000;
# y = 200000;
# z = x + y;

ori $t0, $zero, 0x186A
sll $s0, $t0, 4 # 6250 * 16(2^4) = 100000

ori $t1, $zero, 0x30D4
sll $s1, $t1, 4 # 12500 16(2^4) = 200000

add $s2, $s0, $s1 # x + y 

#fim

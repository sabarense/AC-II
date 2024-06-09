# Exercício 8

#inicio

.text
.globl main

main:

# Atribuições
ori $8, $zero, 0x1234
sll $8, $8, 16
ori $8, $8, 0x5678
# t0 = 0x12345678

srl $9, $8, 24
# t1 = 0x00000012

sll $10, $8, 8
srl $10, $10, 24
# t2 = 0x00000034

sll $11, $8, 16
srl $11, $11, 24
# t3 = 0x00000034

sll $12, $8, 24
srl $12, $12, 24
# t4 = 0x00000078

#fim

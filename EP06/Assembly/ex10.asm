# Exercício 10

#inicio

.text
.globl main

main:

# Atribuições
.data
x: .word 5
z: .word 7
y: .word 0

.text

lui $t0, 0x1001

lw $s0, 0($t0)# x
lw $s1, 4($t0) # z

sll $t1, $s0, 7 # 128x = 2^7
sub $t1, $t1, $s0 #127x

sll $t2, $s1, 6 # 64z = 2^6
add $t2, $t2, $s1 # 65z

sub $t3, $t1, $t2 # 127x-65z
addi $t3, $t3, 1 # 127x-65z + 1

sw $t3, 8($t0)

#fim



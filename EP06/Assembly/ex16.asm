# Exercicio 16

.data
x:.word 0x186A00
y:.word 0x13880
z:.word 0x61A80

.text
lui  $t0, 0x1001

lw   $s0, 0($t0)      #s0 = x
lw   $s1, 4($t0)      #s1 = y
lw   $s2, 8($t0)      #s2 = z

mult $s0, $s1 # x * y
mflo $t1 # resultado da multiplicacao

div $t1, $s2
mflo $t2 # resultado da divisao

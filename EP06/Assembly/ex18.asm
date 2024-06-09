# Exercicio 18

.data
x: .word 1
y: .word 0

.text

# 5^2 = 5 * 5 = (5+5+5+5+5)
# 5^3 = 5 * 5 * 5 = (5+5+5+5+5) + (5+5+5+5+5) + (5+5+5+5+5) + (5+5+5+5+5) + (5+5+5+5+5)
# 5^4 = 5*5*5*5 = 5^3 + 5^3 + 5^3 + 5^3 + 5^3

lui $t0, 0x1001 
lw $t1, 0($t0)# t1 = X
lw $t2, 4($t0) # t2 = Y
ori $t3, $zero, 1 # t3 = 1
or $t5, $zero, $t1 # t5 = X
or $t7, $zero, $t1 # t7 = X
addi $t6, $t2, -1 # t6 = Y - 1


beq $t2, $zero, exp_0 # Caso o expoente for 0, go to exp_0
beq $t6, $zero, loop_2 # Caso o expoente for 1, go to loop_2. Porque no entraria no loop_1, porque t6 = 0

loop_1:
beq $t6, $zero, fim # Repetir (y-1)vezes
or $t4, $zero, $zero # t4 = 0 - importante a partir do segundo loop_1

loop_2:
beq $t5, $zero, controle # repetir x vezes e then go to controle
sub $t5, $t5, $t3 # t5 = t5 -1
add $t4, $t4, $t1 # t4 = t4 + t1 (resultado)
beq $t2, $t3, fim # Se t2 = 1 sair
j loop_2 

controle:
or $t5, $zero, $t7 # t5 = X
or $t1, $zero, $t4 # t1 = t4
sub $t6, $t6, $t3 # t6 = t6 - 1
j loop_1


exp_0:
ori $t4, $zero, 1 # resultado = 1

fim:
sw $t4, 8($t0) # Resultado

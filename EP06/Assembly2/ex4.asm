#Inicialização das variáveis
ori $s0, $zero, 3 # x = 3
ori $s1, $zero, 4 # y = 4

#Cálculo de 15 * x 
sll $t0, $s0, 3 # $s0 * 2 ^ 3 
sll $t1, $s0, 2 # $s0 * 2 ^ 2 
sll $t2, $s0, 1 # $s0 * 2 ^ 1 

add $t3, $t0, $t1 # (x * 8) + x * 4
add $t4, $t3, $t2 # (x * 8) + (x * 4) + ( x * 2 )
add $t5, $t4, $s0 # (x * 8) + (x * 4) + ( x * 2 ) + x 

#Cálculo de 67 * y
sll $t0, $s1, 6  # $t0 = y * 64 (y * 2^6)
sll $t1, $s1, 1  # $t1 = y * 2 (y * 2^1)
add $t2, $t0, $t1  # $t2 = (y * 64) + (y * 2)
add $t3, $t2, $s1  # $t3 = (y * 64 + y * 2) + y = 67 * y

#Cálculo de 15 * x + 67 * y
add $t4, $t5, $t3 # 15x + 67y
sll $t5, $t4, 2 # (15x + 67y) * 4


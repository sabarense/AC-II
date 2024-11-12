# Inicialização das variáveis
ori $s0, $zero, 3  # x = 3
ori $s1, $zero, 4  # y = 4

# Cálculo de 15 * x
add $t0, $s0, $s0  # t0 = 2 * x 
add $t1, $t0, $t0  # t1 = 4 * x
add $t2, $t1, $t1  # t2 = 8 * x 
add $t3, $t2, $t1  # t3 = 8 * x + 4 * x = 12 * x 
add $t4, $t3, $t0  # t4 = 12 * x + 2 * x = 14 * x
add $t5, $t4, $s0  # t5 = 14 * x + 1 * x = 15 * x 

#Cálculo de 67 * y
add $t0, $s1, $s1 # 2 * y
add $t1, $t0, $t0 # 4 * y
add $t2, $t1, $t1 # 8 * y
add $t3, $t2, $t2 # 16 * y
add $t4, $t3, $t3 # 32 * y
add $t6, $t4, $t4 # 64 * y
add $t7, $t6, $t0 # 66 * y
add $t8, $t7, $s1 # 67 * y

#Cálculo de (15x + 67y)
add $t9, $t5, $t8 # z = 15 * x + 67 * y
add $t9, $t9, $t9 # z = (15 * x + 67 * y) * 2
add $t9, $t9, $t9 # z = (15 * x + 67 * y) * 4


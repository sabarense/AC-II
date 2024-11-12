# Inicialização das variáveis
ori $s0, $zero, 1   # x = 1

# Calcular 5 * x 
add $t0, $s0, $s0   # $t0 = 2 * x
add $t0, $t0, $t0   # $t0 = 4 * x
add $t0, $t0, $s0   # $t0 = 5 * x

# Somar 15 a $t0
addi $t0, $t0, 15   # $t0 = 5 * x + 15

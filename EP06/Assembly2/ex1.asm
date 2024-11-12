# Inicialização das variáveis
ori $s0, $zero, 2   # a = 2
ori $s1, $zero, 3   # b = 3
ori $s2, $zero, 4   # c = 4
ori $s3, $zero, 5   # d = 5

# Cálculo de x = (a + b) - (c + d)
add $t0, $s0, $s1   # t0 = a + b
add $t1, $s2, $s3   # t1 = c + d
sub $t0, $t0, $t1   # x(t0) = (a + b) - (c + d)

# Cálculo de y = a - b + x
sub $t2, $s0, $s1   # y(t2) = a - b
add $t2, $t2, $t0   # y(t2) = (a - b) + x

# Cálculo de b = x - y
sub $t3, $t0, $t2   # b(t3) = x - y
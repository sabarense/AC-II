# Carregar 64.000 (0xF9A0) em $t0
lui $t0, 0xF9      # Carrega 0xF9000000 nos 16 bits mais altos de $t0
ori $t0, $t0, 0xA0  # Faz OR com 0xA0 e coloca o resultado em $t0 (100000)

# Carregar 36.000 (0x8D80) em $t1
lui $t1, 0x8D      # Carrega 0x8D000000 nos 16 bits mais altos de $t1
ori $t1, $t1, 0x80  # Faz OR com 0x80 e coloca o resultado em $t1 (36000)

# Soma 64.000 + 36.000 = 100.000 em $t2
add $t2, $t0, $t1   # Soma $t0 (100000) com $t1 (36000) e coloca o resultado em $t2

# Carregar 200.000 (0x30D40) em $t3
lui $t3, 0x30      # Carrega 0x30000000 nos 16 bits mais altos de $t3
ori $t3, $t3, 0xD40 # Faz OR com 0xD40 e coloca o resultado em $t3 (200000)

# Soma 100.000 + 200.000 = 300.000 em $t4
add $t4, $t2, $t3  # Soma $t2 (100000) com $t3 (200000) e coloca o resultado em $t4

# s0 = maiuscula
# s1 = minuscula

main:
    # recebe letra maiuscula
    addi t0, zero, 5
    ecall
    
    # armazena letra
    mv s0, a0

    # converte para minuscula
    ori s1, s0, 32
    mv a0, s1

    # imprime na tela
    addi t0, zero, 2
    ecall
    
    final:
        ret

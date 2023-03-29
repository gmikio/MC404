

main:
    # receber numero
    addi t0, zero, 4
    ecall
    
    # guarda no registrador
    # mv s0, a0
    
    # imprime na tela
    addi t0, zero, 1
    ecall

    final:
        ret

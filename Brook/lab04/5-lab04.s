recebe_numero:
    addi t0, zero, 4
    ecall
    mv s0, a0
    ret

definir_letra:
    addi a0, s0, 55
    # addi a0, s0, 48
    j final

main:
    # range numeros
    addi s3, zero, 10

    jal recebe_numero
    
    bge s0, s3, definir_letra

    addi a0, s0, 48
    
    final:
        # imprime na tela
        addi t0, zero, 2
        ecall

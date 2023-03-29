# s0 = maiuscula
# s1 = minuscula

converter_para_maiuscula:
    andi s1, s0, 223
    mv a0, s1
    j final

main:
    # range maiuscula
    addi s3, zero, 90

    # recebe letra
    addi t0, zero, 5
    ecall
    
    # armazena letra
    mv s0, a0

    blt s3, s0, converter_para_maiuscula
    
    # converter para minuscula
    ori s1, s0, 32
    mv a0, s1

    final:
        # imprime na tela
        addi t0, zero, 2
        ecall
        ret

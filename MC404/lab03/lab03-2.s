main:
        # zerando os registradores a serem utilizados
    mv zero, s0  # armazena o numero lido do teclado
    mv zero, s1  # armazena a operacao de and para checagem de paridade
    mv zero, s2  # armazena o numero 3 como referencia para divisibilidade por 4
    li s2, 3

        # le um numero do teclado
    addi t0, zero, 4
    ecall
  
        # armazena o numero lido em s0
    mv s0, a0

        # checa se o numero lido e divisivel por 4
    AND s1, s0, s2

        # caso seja, pula para eDivisivelPor4
    BEQ s1, zero, eDivisivelPor4
        # caso nao seja, pula para naoEDivisivelPor4
    j naoEDivisivelPor4

    eDivisivelPor4:
        # imprime "S" de "Sim"
    addi a0, zero, 83
    addi t0, zero, 2
    ecall

    j fim

    naoEDivisivelPor4:
        # imprime "N" de "Nao"
    addi a0, zero, 78
    addi t0, zero, 2
    ecall

    fim:
        ret


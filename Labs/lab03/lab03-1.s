main:
        # zerando os registradores a serem utilizados
    mv zero, s0  # armazena o numero lido do teclado
    mv zero, s1  # armazena a operacao de and para checagem de paridade
    mv zero, s2  # armazena o numero 1 como referencia para paridade
    li s2, 1

        # le um numero do teclado
    addi t0, zero, 4
    ecall
  
        # armazena o numero lido em s0
    mv s0, a0

        # checa se o numero lido e impar
    AND s1, s0, s2

        # caso seja impar, pula para imprimeImpar
    BEQ s1, s2, imprimeImpar
        # caso seja par, pula para imprimePar
    j imprimePar

    imprimeImpar:
        # imprime "I" de impar
    addi a0, zero, 73
    addi t0, zero, 2
    ecall

    j fim

    imprimePar:
        # imprime "I" de impar
    addi a0, zero, 80
    addi t0, zero, 2
    ecall

    fim:
        ret


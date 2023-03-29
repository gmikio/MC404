main:
        # zerando os registradores a serem utilizados
    mv zero, s0  # armazena o segredo lido do teclado  
    mv zero, s1  # armazena o numero a ser codificado lido do teclado
    mv zero, s2  # armazena o numero codificado

        # le o segredo do teclado
    addi t0, zero, 4
    ecall
        # armazena o segredo lido em s0
    mv s0, a0

loop: 
        # le o numero a ser codificado do teclado
    addi t0, zero, 4
    ecall
        # verifica se o numero e 0
    beq a0, zero, fim
        # armazena o numero lido em s1
    mv s1, a0 

        # codifica o numero com base no segredo fornecido
    xor s2, s0, s1

        # imprime o numero codificado
    add a0, zero, s2
    addi t0, zero, 1
    ecall
    j loop

fim:
    ret


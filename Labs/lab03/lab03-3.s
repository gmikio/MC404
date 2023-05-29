main:
        # zerando os registradores a serem utilizados
    mv zero, s0  # armazena o numero lido do teclado
    mv zero, s1  # armazena o resultado da operacao de and para checagem de paridade
    mv zero, s2  # armazena um numero como referencia para paridade
    li s2, 1     # numero para paridade: 1
    mv zero, s3  # armazena a soma dos numeros impares
    mv zero, s4  # armazena a soma dos numeros pares
    mv zero, s5  # armazena o resultado da operacao de Soma(Impares) - Soma(Pares)

loop:
        # le um numero do teclado
    addi t0, zero, 4
    ecall
        # verifica se o numero e 0
    BEQ a0, zero, imprimeResultado
    
        # armazena o numero lido em s0
    mv s0, a0

        # checa se o numero lido e impar
    and s1, s0, s2

        # caso seja impar, pula para somaImpar
    beq s1, s2, somaImpar
        # caso seja par, pula para somaPar
    j somaPar

somaImpar:
        # soma o numero impar lido junto com os outros impares
    add s3, s3, s0

    j loop

somaPar:
        # soma o numero par lido junto com os outros pares
    add s4, s4, s0

    j loop

imprimeResultado:
        # realiza a operacao de Soma(Impares) - Soma(Pares)
    sub s5, s3, s4

    blt s5, zero, printNeg


    # imprime o resultado desta operacao
    add a0, zero, s5
    addi t0, zero, 1
    ecall
    j fim

printNeg:
        # obtem o modulo do numero negativo
    sub s5, zero, s5

        # imprime o modulo do numero com um "-" antes, representando o numero negativo
    li a0, 45
    addi t0, zero, 2
    ecall

        # imprime o valor de s5
    add a0, zero, s5
    addi t0, zero, 1
    ecall
fim:
    ret


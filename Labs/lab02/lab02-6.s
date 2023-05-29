main:
    # zerando os registradores a serem utilizados
  mv zero, s0

    # le um numero do teclado
  addi t0, zero, 4
  ecall    
    # subtrai 10 do numero lido 
  addi a0, a0, -10 

    # salva o valor de a0 em s0
  add s0, zero, a0

    # checa se o numero e negativo. Caso for, pula para a label printNeg
  blt a0, zero, printNeg

    # imprime o resultado
  addi t0, zero, 1
  ecall 
  j fim

printNeg:
    # obtem o modulo do numero negativo
  sub s0, zero, s0

  # imprime o modulo do numero com um "-" antes, representando o numero negativo
  li a0, 45
  addi t0, zero, 2
  ecall

  # imprime o valor de s0
  add a0, zero, s0
  addi t0, zero, 1
  ecall

  fim:
    ret

programa {
  funcao inicio() {
    inteiro numero, tabuada

    escreva("digita um numero que eu vou te dizer a tabuada dele! ")
    leia(numero)

    para(inteiro i = 1; i<numero+1; i++){
      tabuada = numero * i
      escreva(numero, "x", i, "=", tabuada, "\n")
    }
  }  
}
programa {
funcao inicio() {
    inteiro numero, tabuada

    escreva("digita um numero que eu vou te dizer a tabuada dele! ")
    leia(numero)

    para(inteiro i = 0; i < 10; i++){
    tabuada = numero * i
    escreva(numero, "x", i, "=", tabuada, "\n")
    }
}
}
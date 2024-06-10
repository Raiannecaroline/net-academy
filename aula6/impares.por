programa {
funcao inicio() {
    inteiro limiteMin, limiteMax

    escreva("vou te mostrar os numeros impares entre os limites informados\n\n")
    escreva("digite o limite minimo desse intervalo: ")
    leia(limiteMin)

    escreva("digite o limite maximo desse intervalo: ")
    leia(limiteMax)

    //adicionar condições caso o lim min nao seja menor que o lim max

    para (inteiro i = limiteMin + 1; i < limiteMax; i++) {
    se (i % 2 != 0) {
        escreva(i, " ")
    }
    }

}
}
programa {
funcao inicio() {
    inteiro numero, atual=1, fatorial=1

    escreva("digite um numero: ")
    leia(numero)

    enquanto (atual <= numero){
    fatorial = fatorial * atual
    atual++
    }

    escreva("fatorial de ", numero, " é: ", fatorial)

}
}
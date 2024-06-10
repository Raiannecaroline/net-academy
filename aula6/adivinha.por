programa {
inclua biblioteca Util --> u

funcao inicio() {
    inteiro sorteado, palpite, tentativas = 1

    sorteado = u.sorteia(1,99)

    escreva("sorteei um numero! qual voce acha que eh?\n")
    leia(palpite)

    enquanto (palpite != sorteado){
    se(palpite > sorteado){
        escreva("voce errou, seu palpite é MAIOR do que o que eu sorteei\n")
        escreva("tenta de novo! qual voce acha que eh?\n")
        leia(palpite)
    } senao se (palpite < sorteado){
        escreva("voce errou, seu palpite é MENOR do que o que eu sorteei\n")
        escreva("tenta de novo! qual voce acha que eh?\n")
        leia(palpite)
    }
    tentativas ++
    }

    escreva("parabens! é isso mesmo, voce precisou de ", tentativas, " tentativas para acertar!")

}
}
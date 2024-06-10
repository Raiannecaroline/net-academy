programa {
inclua biblioteca Util --> u

funcao inicio() {
    logico raiSabe = falso
    inteiro aleatorio
    inteiro vezes = 0

    enquanto(nao raiSabe){
    aleatorio = u.sorteia(1, 1000)
    escreva("Emanoel: eh serio que essa toalha ta na cama de novo?\n")
    vezes ++
    se(aleatorio==55){
        raiSabe = verdadeiro
    }
    }

    escreva("Raiane: so precisou dizer ", vezes, " vezes uai")
}
}
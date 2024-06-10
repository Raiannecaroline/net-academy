programa {
funcao inicio() {
    inteiro grao = 1
    inteiro total = 0

    escreva("1 ", grao, "\n")
    para(inteiro casa = 2; casa < 65; casa++){
    grao = grao * 2
    total = total + grao
    escreva(casa, " ", grao, "\n")
    }

    escreva("total: ", total)
}
}
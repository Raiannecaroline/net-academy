programa {
funcao inicio() {
    inteiro peso
    real altura
    inteiro imc

    const real imcMin = 20
    const real imcMax = 25

    escreva("calculando IMC\n")
    escreva("--------------\n")

    escreva("peso: ")
    leia(peso)

    escreva("altura: ")
    leia(altura)

    imc = peso / (altura*altura)

    se(imc<imcMin){
    escreva("imc: ", imc, " - abaixo do peso")
    }senao se(imcMin<=imc e imc<=imcMax){
    escreva("imc: ", imc, " - peso ideal")
    }senao se(imc>imcMax) {
    escreva("imc: ", imc, " - acima do peso")
    }
}
}
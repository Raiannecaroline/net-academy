programa {
funcao inicio() {
    real ladoA, ladoB, ladoC
    escreva("trianglineo\n")
    escreva("-----------\n")

    escreva("lado A: ")
    leia(ladoA)    
    
    escreva("lado B: ")
    leia(ladoB)    
    
    escreva("lado C: ")
    leia(ladoC)

    se(((ladoA + ladoB) < ladoC) ou ((ladoA + ladoC) < ladoB) ou ((ladoB + ladoC) < ladoA)){
    escreva("nao eh um triangulo")
    } senao {
    se (ladoA == ladoB e ladoB == ladoC) {
        escreva("eh um triangulo equilatero")
    } senao se (ladoA == ladoB ou ladoA == ladoC ou ladoB == ladoC) {
        escreva("eh um triangulo isosceles")
    } senao {
        escreva("eh um triangulo escaleno")
    }
    } 
}
}
programa {
funcao inicio() {
    const inteiro IDADEMIN = 16
    const inteiro IDADEMAX = 70
    const inteiro PESOMIN = 50
    cadeia nome
    inteiro idade
    inteiro peso
    logico descansou
    logico gestante
    logico alimentou
    logico resfrir
    logico saude
    logico gripe
    logico doar = verdadeiro

    escreva("\n descobrir se vc pode doar sanguinho\n")
    escreva("--------------------------------------\n")

    escreva("nome: ")
    leia(nome)

    enquanto (doar == verdadeiro){
    escreva("idade: ")
    leia(idade)

    se(idade <= IDADEMIN ou idade > IDADEMAX){
        doar = falso
        pare
    }

    escreva("peso: ")
    leia(peso)

    se (peso < PESOMIN){
        doar = falso
        pare
    }

    escreva("1 = sim e 0 = nao\n")

    escreva("descansou bem? ")
    leia(descansou)

    escreva("se alimentou? ")
    leia(alimentou)

    escreva("tem boa saude? ")
    leia(saude)

    escreva("esta gestando? ")
    leia(gestante)

    escreva("esta com gripe? ")
    leia(gripe)

    se(saude e descansou e alimentou e nao gestante e nao gripe){
        doar = verdadeiro
    }senao{
        doar = falso
    }
    }
    

    se(doar){
    escreva("\nvoce pode doar")
    }senao{
    escreva("voce nao pode doar")
    }
}
}
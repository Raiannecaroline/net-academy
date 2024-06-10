programa {
funcao inicio() {
    inteiro lugar
    logico segurar
    logico transito
    logico banho
    logico lavarPe
    logico pessoasPerto
    logico importar
    logico bebada
    logico consciente
    logico coletarUrina
    cadeia resposta[] = {"no banheiro", "no acostamento", "no banho", "onde quiser", "na moita", "na roupa", "em um copo"}

    escreva("onde fazer pipizinho?\n")
    escreva("---------------------\n")
    escreva("onde você está?\n1-carro\n2-casa\n3-fora\n4-festa\n5-qualquer outro lugar\n")
    leia(lugar)
    escreva("1 = sim e 0 = nao\n")

    se (lugar==1){
    escreva("voce aguenta segurar? ")
    leia(segurar)
    se (segurar==1){
        escreva(resposta[0])
    }senao{
        escreva("tem transito? ")
        leia(transito)
        se(transito==1){
        escreva(resposta[6])
        }senao{
        escreva(resposta[1])
        }
    }
    }se (lugar==2){
    escreva("voce ta tomando banho? ")
    leia(banho)
    se (banho==1){
        escreva("voce lavou o pe? ")
        leia(lavarPe)
        se (lavarPe==1){
        escreva(resposta[0])
        }senao{
        escreva(resposta[2])
        }
    }senao{
        escreva(resposta[1])
    }
    } se (lugar==3){
    escreva("tem pessoas perto? ")
    leia(pessoasPerto)
    se (pessoasPerto==1){
        escreva("voce se importa com o que pensam? ")
        leia(importar)
        se (importar==1){
        escreva(resposta[4])
        }senao{
        escreva(resposta[3])
        }
    }senao{
        escreva(resposta[3])
    }
    } se (lugar==4){
    escreva("voce ta bebada? ")
    leia(bebada)
    se (bebada==1){
        escreva("voce ta consciente? ")
        leia(consciente)
        se (consciente==1){
        escreva(resposta[3])
        }senao{
        escreva(resposta[5])
        }
    }senao{
        escreva(respota[0])
    }
    }se (lugar==5){
    escreva("é uma coleta de urina? ")
    leia(coletarUrina)
    se (coletarUrina==1){
        escreva(resposta[6])
    }senao{
        escreva(resposta[0])
    }
    }
}
}
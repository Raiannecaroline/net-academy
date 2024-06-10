programa {
  funcao inicio() {
    
    /*FICHA CADASTRAL*/

    cadeia hoje
    cadeia nome
    inteiro idade
    cadeia dataNascimento
    cadeia naturalidade
    cadeia nacionalidade
    cadeia estadoCivil
    caracter sexo
    cadeia endereco
    cadeia complemento
    cadeia bairro
    cadeia cep
    cadeia cidade
    cadeia estado
    cadeia telefone
    cadeia celular
    cadeia email
    logico deficiencia
    cadeia tipoDeficiencia
    caracter dados


    escreva("------------------------- DADOS PESSOAIS ------------------------- \n")

    escreva("Qual a data de hoje?")
    leia(hoje)

    escreva("Qual seu nome?")
    leia(nome)

    escreva("Qual sua idade?")
    leia(idade)

    escreva("Em que ano nasceu?")
    leia(dataNascimento)

    escreva("Natural de onde?")
    leia(naturalidade)

    escreva("Qual a sua nacionalidade?")
    leia(nacionalidade)

    escreva("Qual seu estado civil?")
    leia(estadoCivil)

    escreva("Qual seu sexo (F ou M)?")
    leia(sexo)

    escreva("Qual seu endereço?")
    leia(endereco)

    escreva("Alguma referência ou complemento? (Apartamento, Casa, Sobrado)")
    leia(complemento)

    escreva("Qual bairro reside?")
    leia(bairro)

    escreva("Qual seu CEP?")
    leia(cep)

    escreva("Qual sua cidade?")
    leia(cidade)

    escreva("Qual seu estado?")
    leia(estado)

    escreva("Algum número de telefone para contato?")
    leia(telefone)

    escreva("Algum celular?")
    leia(celular)

    escreva("Algum e-mail?")
    leia(email)

    escreva("Possui alguma deficiência?")
    leia(deficiencia)

      se(deficiencia == verdadeiro){
        escreva("Qual tipo de deficiência?")
        leia(tipoDeficiencia)
      } senao {
        escreva("Não possui \n")
      }

    escreva("*******************************************************")


    //IMPRIMIR

    escreva("IMPRIMINDO OS DADOS NA TELA - (Confirma as informações acima? - (s ou n)) \n")
    leia(dados)

      se(dados == verdadeiro){
        escreva("\n Data: ", hoje, "\n")
        escreva("Nome: ", nome, "\n")
        escreva("Idade: ", idade, " anos \n")
        escreva("Data Nascimento: ", dataNascimento, "\n")
        escreva("Naturalidade: ", naturalidade, "\n")
        escreva("Nacionalidade: ", nacionalidade, "\n")
        escreva("Estado Civil: ", estadoCivil, "\n")
        escreva("Sexo: ", sexo, "\n")
        escreva("Endereço: ", endereco,"\n")
        escreva("Complemento: ", complemento, "\n")
        escreva("Bairro: ", bairro, "\n")
        escreva("CEP: ", cep, "\n")
        escreva("Cidade: ", cidade, "\n")
        escreva("Estado: ", estado, "\n")
        escreva("Telefone: ", telefone, "\n")
        escreva("Celular: ", celular, "\n")
        escreva("E-mail: ", email, "\n")
        escreva("É portador de deficiência?", deficiencia, "\n", "Qual?", tipoDeficiencia, "\n")
      } senao{
        escreva("POR FAVOR!! VERIFIQUE SEUS DADOS NOVAMENTE")
      }



  }
}
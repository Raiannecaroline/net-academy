programa {

  inclua biblioteca Util --> util
  inclua biblioteca Calendario --> calendario
  inclua biblioteca Tipos --> tipos
  inclua biblioteca Texto --> texto

  funcao real novoPedido(real pedido[][]){
    para(inteiro i=0; i<10; i++){
      para(inteiro j=0; j<5; j++){
        pedido[i][j] = 0
      }
    }
    retorne pedido
  }

  funcao inicio() {
    
    logico concluir
    
    real pedido[10][5]
    pedido = novoPedido(pedido)
    cadeia tipos[] = {" ", "Lanches","Acompanhamentos","Bebidas","Sobremesas", "Combos"}
    cadeia menu[] = {" ","Cheeseburger","Hambúrguer de Frango","Hot Dog","X-Bacon","Veggie Burger","Double Cheeseburger","Hambúrguer de Peixe","Sanduíche de Frango Grelhado","Wrap de Frango","Sanduíche de Presunto e Queijo","Batata Frita","Onion Rings","Salada","Nuggets de Frango","Coca-Cola","Suco de Laranja","Água Mineral","Chá Gelado","Milkshake de Chocolate","Chopp","Café Expresso","Soda Italiana","Sorvete de Chocolate","Torta de Maçã","Brownie com Sorvete","Pudim de Leite","Cheeseburger + Coca-Cola","Hambúrguer de Frango + Suco de Laranja + Sorvete de Chocolate","Hot-Dog + Milkshake de Chocolate + Batata Frita + Torta de Maçã","X-Bacon + Chá Gelado + Batata Frita + Pudim de Leite"}
    real matriz[][] = {{0,0,0,0},{1,1, 15.00,10},{1,2, 14.00,12},{1,3, 12.00,8},{1,4, 18.00,11},{1,5, 16.00,13},{1,6,20.00,15},{1,7, 17.00,14},{1,8, 14.00,10},{1,9, 13.00,9},{1,10, 11.00,6},{2,11, 8.00,5},{2,12, 9.00,7},{2,13, 6.00,4},{2,14,10.00,6},{3,15, 5.00,1},{3,16, 6.00,2},{3,17, 3.00,1},{3,18, 5.00,2},{3,19, 8.00,4},{3,20, 5.00,1},{3,21, 4.00,3},{3,22, 6.00,2},{4,23, 7.00,3},{4,24, 10.00,9},{4,25,12.00,6},{4,26,9.00,5},{5,27,17.00,10},{5,28,24.00,12},{5,29,35.00,9},{5,30,30.00,11}}
    real curva[] = {0.00,1.00,2.00,2.58,3.00,3.32,3.58,3.81,4.00,4.17,4.32,4.46,4.58,4.70,4.81,4.91,5.00,5.09,5.17,5.25,5.32,5.39,5.46,5.52,5.58,5.64,5.70,5.75,5.81,5.86,5.91,5.95,6.00,6.04,6.09,6.13,6.17,6.21,6.25,6.29,6.32,6.36,6.39,6.43,6.46,6.49,6.52,6.55,6.58,6.61,6.64}
    inteiro item = 0
    real conta = 0.00

    cadeia nome = introducao()
 
    faca{
      escreva("\nQual o seu pedido? \n")
      mostraMenu(tipos, menu, matriz)
      escreva("Informe o número do item: \n")
      leia(pedido[item][0])
      escreva("Qual a quantidade? \n")
      leia(pedido[item][1])
      escreva("Deseja concluir o pedido (sim/não)? ")
      leia(concluir)
      item++
    }enquanto(concluir == falso)

    para(inteiro y = 0; y < 10; y++){

      real aux1 = pedido[y][0]
      real custoUnit = matriz[aux1][2]
      pedido[y][2] = custoUnit
      real quantidade = pedido[y][1]
      real custoTotal = custoUnit * quantidade
      pedido [y][3] = custoTotal
      conta = conta + custoTotal
    }
    
    cupomFiscal(pedido, nome, conta, menu, matriz)
 
  }

  funcao cadeia introducao(){
    cadeia nome
    escreva("Seja bem vinde a lanchonete Quokka Lanches!\n")
    escreva("Qual o seu nome? ")
    leia (nome)
    escreva("Olá ", nome, ".")
    retorne nome
  }

  funcao letreiro(cadeia tipo){
 
    escreva(texto.preencher_a_direita("*", 86, "*"))
    escreva("\n", texto.caixa_alta(tipo), "\n")
    escreva(texto.preencher_a_direita("*", 86, "*"))
    escreva("\n")
  }

  funcao itemDoMenu(inteiro y, cadeia menu[], real matriz[][]){

    inteiro tamanhoColunaNome = 75
    cadeia linha = tipos.inteiro_para_cadeia(y, 10) + " - " + menu[y] 
    para(inteiro t = texto.numero_caracteres(menu[y]); t < tamanhoColunaNome; t++){
      linha += "-"
    }
    linha += "R$ " + tipos.real_para_cadeia(matriz[y][2]) + "\n"
    escreva(linha)
  }

  funcao mostraMenu(cadeia tipos[], cadeia menu[], real matriz[][]){
   
   para(inteiro l = 1; l < util.numero_elementos(tipos); l++){
    letreiro(tipos[l])
    para(inteiro m = 0; m < util.numero_linhas(matriz); m++){
      se(matriz[m][0] == tipos.inteiro_para_real(l)){
        itemDoMenu((matriz[m][1]), menu, matriz)
      }
    }
   }
  
  }

  funcao cupomFiscal(real pedido[][], cadeia nome, real conta, cadeia menu[], real matriz[][]){
    inteiro tamanhoColuna = 75
    cadeia linhaCliente
    cadeia linhaConta

    letreiro("Cupom Fiscal")

    linhaCliente = "Cliente:"
    para(inteiro t = texto.numero_caracteres(nome); t < tamanhoColuna; t++){
      linhaCliente += "-"
    }
    escreva(linhaCliente + nome)
    
    /*para(inteiro p = 0; p < util.numero_linhas(pedido); p++){
  
        escreva(itemDoMenu(pedido[p][0], menu, matriz))
      
    }*/

    linhaConta = "\nValor total:"
    para(inteiro t = texto.numero_caracteres(tipos.real_para_cadeia(conta)); t < tamanhoColuna; t++){
      linhaConta += "-"
    }
    escreva(linhaConta, "R$ ", conta)
  }

  /*funcao linha(){
    inteiro tamanhoColuna = 75
    cadeia pontilhado
    para(inteiro t = texto.numero_caracteres(pedido[1][1]); t < tamanhoColuna; t++){
      pontilhado += "-"
    }
  }*/
}
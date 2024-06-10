programa {


//Variaveis
const inteiro tamanho = 8

caracter tabuleiro[tamanho][tamanho]
caracter jogadas[100][50]
inteiro contadorJogadas = 0


  funcao inicializaJogoTabuleiro(){
    //Peças Pretas

    escreva("\n -------------- JOGADA MATE O LOUCO -------------- \n")

    tabuleiro[0][0] = 't'
    tabuleiro[0][1] = 'c'
    tabuleiro[0][2] = 'b'
    tabuleiro[0][3] = 'r'
    tabuleiro[0][4] = 'r'
    tabuleiro[0][5] = 'b'
    tabuleiro[0][6] = 'c'
    tabuleiro[0][7] = 't'

      para(inteiro coluna = 0; coluna < tamanho; coluna++){
        tabuleiro[1][coluna] = 'p'
      }


      //Espaços vazios

     para(inteiro linha = 2; linha < 7; linha++){
        para(inteiro coluna = 0; coluna < tamanho; coluna++){
          tabuleiro[linha][coluna] = ' '
        }
      }


      //Peças Brancas

      para(inteiro coluna = 0; coluna < tamanho; coluna++){
        tabuleiro[6][coluna] = 'P'
      }

      tabuleiro[7][0] = 'T'
      tabuleiro[7][1] = 'C'
      tabuleiro[7][2] = 'B'
      tabuleiro[7][3] = 'R'
      tabuleiro[7][4] = 'R'
      tabuleiro[7][5] = 'B'
      tabuleiro[7][6] = 'C'
      tabuleiro[7][7] = 'T'


  }

  funcao mostraTabuleiro(){

    para(inteiro linha = 0; linha < tamanho; linha++){
        para(inteiro coluna = 0; coluna < tamanho; coluna++){
          escreva("[", tabuleiro[linha][coluna], "]")
        }
        escreva("\n")
      }

  }


  funcao moverPecas(inteiro linhaOrigem, inteiro colunaOrigem, inteiro linhaDestino, inteiro colunaDestino) {
        caracter peca = tabuleiro[linhaOrigem][colunaOrigem]
        tabuleiro[linhaOrigem][colunaOrigem] = ' '
        tabuleiro[linhaDestino][colunaDestino] = peca

        escreva("Movimento da peça ", peca, " de (", linhaOrigem, ",", colunaOrigem, ") para (", linhaDestino, ",", colunaDestino, ")\n")
        contadorJogadas = contadorJogadas + 1
  }


  funcao inicio() {

    inicializaJogoTabuleiro()

    mostraTabuleiro()

    escreva("\n----------------- JOGADA NOVA ----------------- \n")

    moverPecas(6, 5, 5, 5)  // f2-f3
    escreva("\nTabuleiro após as jogadas:\n")
    mostraTabuleiro()

    moverPecas(1, 4, 3, 4)  // e7-e5
    escreva("\nTabuleiro após as jogadas:\n")
    mostraTabuleiro()


    moverPecas(6, 4, 4, 4)  // e2-e4
    escreva("\nTabuleiro após as jogadas:\n")
    mostraTabuleiro()

    moverPecas(0, 3, 4, 7)  // d8-h4 (Xeque-mate)
    escreva("\nTabuleiro após as jogadas:\n")
    mostraTabuleiro()

    escreva("\n XEQUE MATE!!!!!\n")
      
  }
}
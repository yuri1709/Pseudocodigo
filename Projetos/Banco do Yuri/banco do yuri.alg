algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 12/06/2021
// Se��o de Declara��es
var
   i,menu,x1,tela_menu:inteiro
   deposito,saldo,saldo2,saque:real

//i :variavel do repita para pular linhas

inicio
  x1 <- 1 //inicia o programa

//MENU DE ESCOLHA
  Enquanto (x1 > 0) faca
           saque <- 0
           EscrevaL ("=============")
           EscrevaL ("BANCO DO YURI")
           EscrevaL ("=============")
           EscrevaL ("1.DEP�SITO")
           EscrevaL ("2.SAQUE")
           EscrevaL ("3.SALDO")
           EscrevaL ("4.SAIR(Em breve!)")
           EscrevaL (" ")
           EscrevaL ("-------------")
           Escreva( "OP��O: ")
           Leia (menu)

        Escolha menu
             caso 1 //DEP�SITO
                  menu <- 1
             caso 2 //SAQUE
                  menu <- 2
             caso 3 //SALDO
                  menu <- 3
        FimEscolha

 //deposito

        Se (menu = 1) entao
           Escreval("Insira o valor de dep�sito")
           Escreva("R$ ")
           Leia (deposito)
           limpatela
        FimSe

        Se (menu = 2) entao
           EscrevaL("Insira o valor de saque")
           Escreva("R$ ")
           Leia (saque)
        FimSe

//processo
        Se (menu = 1)  entao
           saldo <- saldo + deposito
        FimSe

        Se (menu = 2) e (saque <= saldo) ou (saque = 0) entao
           saldo <- saldo - saque
           saldo2 <- saldo + saque //saque=0 para n�o cair no senao
        senao
           // se o saque for maior que o saldo
        FimSe

//saida

       Se (menu = 3) entao
           EscrevaL("VALOR SALDO R$:",saldo:2:2)
       senao //esse senao faz com que somente o (menu = 3) seja executado
          Se (menu = 2) e (saldo2 >= saque) entao   //BUG NO MENU 2 QUE NAO CAI NO SENAO saldo insuficiente QUANDO O SAQUE>SALDO
             EscrevaL("Voc� retirou R$ ",saque," reais da sua conta banc�ria")
          FimSe

          Se (saldo2 >= saque)  entao //saldo 2 criado
             EscrevaL("O dep�sito de R$ ",deposito:2:2," reais foi realizado.")//virgula funciona at� a dezena
          senao   //saldo insuficiente
             EscrevaL ("|============================|")
             EscrevaL ("|==$$===SALDO-BANC�RIO===$$==|")
             EscrevaL ("|============================|")
             EscrevaL ("Seu saldo banc�rio � insuficiente")
             EscrevaL ("Por favor,tente novamente:")
          FimSe
       FimSe

//retornar ao menu(entrada)

           EscrevaL ("")
           EscrevaL ("================")
           EscrevaL ("Voltar ao menu ?")
           EscrevaL ("----------------")
           EscrevaL ("1.Voltar")
           EscrevaL ("2.Sair")
           Leia (tela_menu)

//retornar ao menu(processo) start

 Escolha tela_menu
     caso 1
          x1 <- 2
          limpatela
     caso 2
          x1 <- -1
 FimEscolha

 Se (tela_menu = 2 ) entao
    limpatela
    EscrevaL("Obrigado,o BANCO YURI agradece.")

    Para i de 1 ate 3 faca //pula linha
        Escreval("")
    FimPara

    Escreval("Volte sempre!":-25)
 FimSe
//retornar ao menu(processo) end
  FimEnquanto
fimalgoritmo

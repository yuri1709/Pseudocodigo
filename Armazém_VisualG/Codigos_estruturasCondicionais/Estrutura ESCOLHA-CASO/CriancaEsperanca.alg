algoritmo "CriancaEsperanca"
var
menu_doacao:inteiro
valor:real

inicio
//Entrada
      EscrevaL ("-------------------")
      EscrevaL (" CRIAN�A ESPERAN�A")
      EscrevaL ("-------------------")
      EscrevaL (" 1.Para doar R$10,00")
      EscrevaL (" 2.Para doar R$20,00")
      EscrevaL (" 3.Para doar R$30,00")
      EscrevaL (" 4.Para doar outro valor")
      EscrevaL (" 5.Para cancelar")
      Leia(menu_doacao)
      Enquanto menu_doacao > 5 faca
               EscrevaL("O valor inserido,n�o � reconhecido pelo programa.")
               Escreva("Por gentileza,insira um valor v�lido:")
               Leia(menu_doacao)
      fimenquanto
      
//processo
Escolha menu_doacao
   CASO 1
        valor <- 10
   CASO 2
        valor <- 20
   CASO 3
        valor <- 30
   CASO 4
        escreva("�tima escolha!Quanto voc� quer doar RS:")
        leia(valor)
   CASO 5
        limpatela
        escreva("Voc� cancelou a sua doa��o.")
   OUTROCASO
            escreval("Que vergonha,voc� n�o vai doar nada ?")
fimescolha
//sa�da
Escreval ("------------------")
Escreval (" Voc� doou R$",valor:5:2)
Escreval (" Obrigado!")
Escreval ("------------------")
fimalgoritmo

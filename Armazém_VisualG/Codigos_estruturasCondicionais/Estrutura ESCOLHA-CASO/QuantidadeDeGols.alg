algoritmo "QuantidadeDeGols"

var
time1,time2,nivel:caractere
gol_A,gol_B,gols:inteiro
inicio
//Entrada
     EscrevaL("---------------")
     EscrevaL("  APP-GOLEADA")
     EscrevaL("---------------")
     EscrevaL("Inserir os times da partida:")
     Escreva("Time 1: ")
     Leia(time1)
     Escreva("Time 2: ")
     Leia(time2)

     Escreva("Número de gols do time ",time1," :")
     Leia(gol_A)
     Escreva("Número de gols do time ",time2," :")
     Leia(gol_B)

//Processo
Se (gol_A >= gol_B) entao
   gols <- gol_A - gol_B
Senao
   gols <- gol_B - gol_A
fimSe

Escolha gols
     CASO 0
          nivel <- "Empate"
     CASO 1,2
          nivel <- "golzinho"
     CASO 3
          nivel <- "Golaço!"
     OUTROCASO
          nivel <- "Goleada!"
fimescolha

//Saida
       escrevaL("")
       escrevaL("------------------------")
EscrevaL(time1,"[",gol_A,"] X [",gol_B,"]",time2)
Se (gol_A > gol_B) entao
   EscrevaL(time1," ganhou de ",nivel)
Senao
   Se (gol_A = gol_B) entao
      EscrevaL(time1," e ",time2," ",nivel)
   senao
      EscrevaL(time2," ganhou de ",nivel)
   FimSe
FimSe
        escrevaL("------------------------")
fimalgoritmo

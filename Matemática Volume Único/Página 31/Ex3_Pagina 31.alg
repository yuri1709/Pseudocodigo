algoritmo "Distância pecorrida em alto mar por um navio a 40km/h"
// Função :f(t) = t.40   onde t = tempo
// Autor :Yuri Conder
// Data : 15/10/2021
// Seção de Declarações 
var
   //var da letra a)
   linha:inteiro
   distancia:vetor[0..3,0..1] de real //0 = t e 1 = f(t)
   //var da letra b)
   tempo,distanciaB:real
   //var da letra c)
   formula:caractere

inicio
   distancia[0,0] <- (1/4)
   distancia[1,0] <- (2/4)
   distancia[2,0] <- 3
   distancia[3,0] <- 5
     //Processo Letra a)
     Para linha de 0 ate 3 faca
         distancia[linha,1] <- distancia[linha,0] * 40   //f(t) = t*40
     FimPara
     //Processo Letra b)
     tempo <- 1200/40
     //Processo Letra c)
     formula <- "D=40.t"

     
     //Saída
     EscrevaL ("Letra a)")
     Escreva ("Distância")
     Escreval ("Período":-12)
     Para linha de 0 ate 3 faca
      Escreva (distancia[linha,1]," Km")
      Escreva ("":-9,distancia[linha,0])
      EscrevaL ("Horas":-6)
     FimPara
     EscrevaL ("")
     EscrevaL ("Letra b)")
     EscrevaL ("Ao pecorrer 1220Km o navio leva ",tempo,"Horas")
     EscrevaL ("")
     EscrevaL ("Letra c)")
     Escreva (formula)
fimalgoritmo

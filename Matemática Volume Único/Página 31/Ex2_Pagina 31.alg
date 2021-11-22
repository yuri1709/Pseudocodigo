algoritmo "semnome"
// Função :Calcular o combustível gasto em função da distância
// Autor : Yuri Conder
// Data : 15/10/2021
// Livro pag 31,Ex 2
var
   l,d:real
   //d = distancia
   //l = Combustível
   tabela: vetor[0..6,0..1] de real  //0= Litros e 1= Distancia
   count: inteiro
inicio
   //Entrada
   tabela[0,1] <- 0.25
   tabela[1,1] <- 0.5
   tabela[2,1] <- 2
   tabela[3,1] <- 5
   tabela[4,1] <- 12
   tabela[5,1] <- 28
   tabela[6,1] <- 45
   //Processo
   Para count de 0 ate 6 faca
      tabela[count,0] <- tabela[count,1]*8
   FimPara
   //Saída
   Escreva ("Distância pecorrida  x")
   Escreva("  Gasolina consumida":30)
   EscrevaL ("")
   Para count de 0 ate 6 faca
      Escreva (tabela[count,0]," Km")
      Escreva ("":22,tabela[count,1],"L")
      EscrevaL ("")

   FimPara
   
fimalgoritmo

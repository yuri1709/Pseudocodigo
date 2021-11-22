algoritmo "TOP 10 - Melhores notas"
// Função :
// Autor :
// Data : 30/08/2021
// Seção de Declarações 
var
   i,j:inteiro
   store:real
   nomes:vetor[1..10,1..2] de caractere
   pontos:vetor[1..10] de real

inicio
nomes[1,1] <- "Yuri"
nomes[2,1] <- "Maria"
nomes[3,1] <- "José"
nomes[4,1] <- "Tiago"
nomes[5,1] <- "Gabriela"
nomes[6,1] <- "Carla"
nomes[7,1] <- "Lucas"
nomes[8,1] <- "Bruna"
nomes[9,1] <- "Carlos"
nomes[10,1] <- "Leo"

//Entrada
   Para i de 1 ate 10 faca
      EscrevaL (nomes[i])
      Escreva ("Nota:")
      Leia (pontos[i])
      nomes[i,2] <- (numpcarac(pontos[i]))
      LimpaTela
   FimPara
//Processo
i<- 0
j<- 0

Para j de 1 ate 10 faca
   i <- j+1
   Para i de 1 ate 10 faca
      Se (pontos[j] > pontos[i]) entao
         store <- pontos[j]
         pontos[j] <- pontos[i]
         pontos[i] <- store
      FimSe
   FimPara
FimPara

  EscrevaL ("Melhores alunos:")
  Para j de 1 ate 10 passo 1 faca
   EscrevaL (nomes[j,1],"=",pontos[j])
  FimPara

fimalgoritmo

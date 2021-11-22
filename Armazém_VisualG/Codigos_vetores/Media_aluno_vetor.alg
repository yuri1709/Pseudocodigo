algoritmo "VETORES"
// Função :
// Autor :
// Data : 30/09/2021
// Seção de Declarações 
var
NOTAS: vetor [0..3] de real
SOMA, MEDIA: real
i:inteiro

inicio
   SOMA <- 0
   EscrevaL ("Digite as quatros notas do aluno: ")

   Para i de 0 ate 3 faca
      Leia (NOTAS[i])
      SOMA <- SOMA + NOTAS[i]
   FimPara

   MEDIA <- SOMA / 4
//Saída
   EscrevaL ("A média é ",MEDIA)
   
   Para i de 0 ate 3 faca
      EscrevaL ("Nota ",i + 1," :",NOTAS[i])
   FimPara
fimalgoritmo

algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 16/10/2021
// Se��o de Declara��es 
var
//Entrada de dados
Num_escolhido:inteiro

//Contadores  do loop FimPara
linha,linha2:inteiro

//Var de entrada dos n�meros primos
b,c,d:inteiro

//Vetores
a:vetor [0..5] de inteiro
mmc:vetor [0..5] de inteiro
resto:vetor[0..5] de inteiro
inicio

   //Entrada
   EscrevaL ("FATORA��O AUTOM�TICA")
   EscrevaL ("Qual valor � ser fatorado ?")
   Escreva  ("valor:")
   Leia (Num_escolhido)

   //Valor a ser fatorado
   a[0] <- Num_escolhido

   //n�meros primos
   b <- 2
   c <- 3
   d <- 7

   //Processo problema em duplica��o de item nos vetores A
   Num_escolhido <- a[0]
   Para linha de 0 ate 5 faca
   
      Se (linha > 0) entao
         linha2 <- linha - 1
      FimSe

      resto[linha] <- a[linha2] mod b

      Se (resto[linha] = 0) entao
         mmc[linha] <- a[linha2] div b
         EscrevaL ("resto1 = 0")
      Senao
         mmc[linha] <- a[linha2] div c
         EscrevaL ("resto1 <> 0")
      FimSe
      a[linha] <- mmc[linha2]
      
   FimPara

   //Sa�da
   //EscrevaL (a)
                        //Eu acho que a sa�da est� correta :)
    EscrevaL ("MDC")
    EscrevaL (Num_escolhido)
    Para linha de 0 ate 5 passo 2 faca  // para resolver a duplicata,acrescente passo 2,por�m essa maneira n�o � a correta de se resolver
         Se (mmc[linha] <> 0) entao
            EscrevaL (mmc[linha])
         FimSe
    FimPara




fimalgoritmo

algoritmo "semnome"
// Função :
// Autor :
// Data : 25/08/2021
// Seção de Declarações 
var
   a,b,c,j:inteiro
   lado:vetor[0..2] de inteiro
   letra:vetor[0..4] de caractere
inicio
   letra[0] <- "a"
   letra[1] <- "b"
   letra[2] <- "c"
   //Entrada de dados
   Para j de 0 ate 2 faca
    Escreva ("Insira o valor do lado ",letra[j],":")
    Leia (lado[j])
    Escolha j
         Caso 0
            a <- lado[j]
         Caso 1
            b <- lado[j]
         Caso 2
            c <- lado [j]
    FimEscolha
   FimPara
   //Processo e saida
    EscrevaL ("")
    Se (b-c < a)e(a< b+c) ou (a-c < b)e(b < a+c) ou (a-b <c)e(c< a+b) entao
      Escreva ("Temos um triangulo ")
      Se (a=b)e(c<>a)e(c<>b) ou (b=c)e(a<>b)e(a<>c) ou (a=c)e(b<>a)e(b<>c) entao
         Escreva ("Isósceles")
      Senao
         Se (a=b) e (b=c) e (a=c) entao
            Escreva ("Equilátero")
         Senao
            Se (a <> b) e (b<>c) e (c<>a) entao
               Escreva ("Escaleno")
            FimSe
         FimSe
      FimSe
    Senao
      EscrevaL ("Não temos um triangulo")
    FimSe
fimalgoritmo

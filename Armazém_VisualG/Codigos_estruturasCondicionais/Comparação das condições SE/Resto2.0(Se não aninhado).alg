algoritmo "semnome"
// Função :
// Autor :
// Data : 27/09/2021
// Seção de Declarações 
//div = retorna quociente da divisão
//mod = retorna resto da divisão
var
  quantia,zeros,n100,n50,n20,n10,n5,n2,n1,r1,r2,r3,r4,r5,r6,r7:inteiro
inicio
   //Entrada
   Escreva ("Insira a quantidade em dinheiro para o sacar: R$")
   Leia (quantia)
   
   //Processo
   n100 <- quantia div 100
   r1 <- quantia mod 100
   n50 <- r1 div 50
   r2 <- r1 mod 50
   n20 <- r2 div 20
   r3 <- r2 mod 20
   n10 <- r3 div 10
   r4 <- r3 mod 10
   n5 <- r4 div 5
   r5 <- r4 mod 5
   n2 <- r5 div 2
   n1 <- r5 mod 2

   zeros <- (n100 + n50 + n20 + n10 + n5 + n2 + n1)
   //Saída

   Se (n100 <> 0) entao
      EscrevaL (n100," x número de notas de 100")
   FimSe
   Se (n50 <> 0) entao
      EscrevaL (n50," x número de notas de 50")
   FimSe
   Se (n20 <> 0) entao
      EscrevaL (n20," x número de notas de 20")
   FimSe
   Se (n10 <> 0) entao
      EscrevaL (n10," x número de notas de 10")
   FimSe
   Se (n5 <> 0) entao
      EscrevaL (n5," x número de notas de 5")
   FimSe
   Se (n2 <> 0) entao
      EscrevaL (n2," x número de notas de 2")
   FimSe
   Se(n1 <> 0) entao
      EscrevaL (n1," x número de notas de 1")
   FimSe

fimalgoritmo

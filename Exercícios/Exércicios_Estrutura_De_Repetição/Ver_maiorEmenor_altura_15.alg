algoritmo "Ler_altura_15"

var
   j:inteiro
   maior,menor,altura:real
inicio
//Entrada
    Para j de 1 ate 15 faca
      EscrevaL ("Por gentileza,insira abaixo a altura(em metros) de cada pessoa:")
      EscrevaL ("Indivíduo ",j,":")
      Escreva ("Altura:")
      Leia (altura)
//Processo
      Se (j = 1) entao    //Para aque o menor valor não seja sempre 0
         menor <- altura
      FimSe
      Se (altura > maior) entao
         maior <- altura
      Senao
         Se (altura < menor) entao
            menor <- altura
         FimSe
      FimSe
      Limpatela
    FimPara
//Saída
   EscrevaL ("Menor altura = ",menor:5:2,"(metros)")
   EscrevaL ("Maior altura = ",maior:5:2,"(metros)")
    
fimalgoritmo

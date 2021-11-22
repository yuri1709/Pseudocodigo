algoritmo "semnome"

var
total,carro,c_fabrica:real
inicio
   EscrevaL ("Custo de produção de um carro.")
   EscrevaL ("")
   Escreva ("Valor do custo de fábrica:")
   Leia (c_fabrica)


    //processo
    
    total <- c_fabrica + c_fabrica*(45/100)
    carro <- total + total*(28/100)
    
   //saida
   EscrevaL("Nota fiscal")
   EscrevaL("")
   EscrevaL("Valor de fábrica: R$",carro)
fimalgoritmo

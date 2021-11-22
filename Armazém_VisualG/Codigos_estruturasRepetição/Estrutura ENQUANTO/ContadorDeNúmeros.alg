algoritmo "conteAte10"

var
   contador,x,salto:inteiro
inicio
     //entrada
     Escreva ("Digite o número até qual você quer contar: ")
     leia(x)
     Escreva ("Qual será o valor do salto: ")
     leia(salto)
     Enquanto (x<0) e (salto < 0) faca  //Para o programa nao contar inifinitos números negativos
         EscrevaL ("")
         Escreva ("ERRO,digite o valor salto novamente:")
         leia(salto)
     FimEnquanto
     
     //processo e saida
     contador <- 0
     Se (salto > 0) entao
        Enquanto (contador <= x) faca
                 EscrevaL(contador)
                 contador <- contador + salto
        FimEnquanto
     senao
        Se (salto < 0) entao   //<Conta na ordem decrescente>
           contador <- x
           Enquanto (contador >= 0) faca
                    EscrevaL(contador)
                    contador <- contador + salto
           FimEnquanto
        FimSe
     FimSe


     Se (x < 0) entao   //Números negativos
        contador <- x
        Enquanto (contador <= 0)  faca
                 EscrevaL(contador:2)
                 contador <- contador + salto
        FimEnquanto
     FimSe

fimalgoritmo

algoritmo "conteAte10"

var
   contador,x,salto:inteiro
inicio
     //entrada
     Escreva ("Digite o n�mero at� qual voc� quer contar: ")
     leia(x)
     Escreva ("Qual ser� o valor do salto: ")
     leia(salto)
     Enquanto (x<0) e (salto < 0) faca  //Para o programa nao contar inifinitos n�meros negativos
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


     Se (x < 0) entao   //N�meros negativos
        contador <- x
        Enquanto (contador <= 0)  faca
                 EscrevaL(contador:2)
                 contador <- contador + salto
        FimEnquanto
     FimSe

fimalgoritmo

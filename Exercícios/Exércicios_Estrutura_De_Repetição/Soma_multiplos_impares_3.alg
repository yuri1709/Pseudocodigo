algoritmo "Soma_numeros_impares_multiplos3"

var
   m3,soma,j:inteiro
inicio
    //Processo
    Para j de 1 ate 500 passo 2 faca
      m3 <- j*3
      soma <- soma + m3
    FimPara

    //Sa�da
    EscrevaL ("Resultado da soma de todos os m�ltiplos �mpares de 3 =",soma)
fimalgoritmo

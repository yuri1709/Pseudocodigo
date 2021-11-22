algoritmo "Soma_numeros_impares_multiplos3"

var
   m3,soma,j:inteiro
inicio
    //Processo
    Para j de 1 ate 500 passo 2 faca
      m3 <- j*3
      soma <- soma + m3
    FimPara

    //Saída
    EscrevaL ("Resultado da soma de todos os múltiplos ímpares de 3 =",soma)
fimalgoritmo

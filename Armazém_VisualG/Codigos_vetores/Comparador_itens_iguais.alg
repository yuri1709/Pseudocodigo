algoritmo "Comparador de vetores"
//Bug : repetindo os mesmos subconjuntos.Averiguar na parte "comparar elementos"
var
   jump,enter:caractere
   i,j,x,contador1,contador2,elementos:inteiro
   n1:vetor[1..6]de caractere
   n2:vetor[1..6]de caractere //n2 -> vetor comparação
inicio
i<- 1
j<- 1

jump <- ""
    //Entrada
    Escreva ("Quantidade de carros: ")
    Leia (x)
    i <- 0
    Repita
         i <- i+1
         Escreva ("Nome do carro",i," :")
         Leia (n1[i])
         EscrevaL (jump)
    Ate i = x

    i <- 1
    Enquanto (i <= x) faca

             Enquanto (j <= x) faca
                      Se (n1[i] = n1[j]) e (i <> j)  entao
                         n2[i] <- n1[i]
                      FimSe
                      j <- j+1
             FimEnquanto
             i <- i+1
             j <- 1 // j recebe 1 para preencher a coluna de cada linha que no caso é comandada pelo i
    FimEnquanto

    Para i de 1 ate 6 faca
         Se (n2[i] <> "") entao
            contador1 <- contador1 + 1
         FimSe
    FimPara
    EscrevaL ("Número de carros iguais = ",contador1)









    i <- 1

    Enquanto (i <= x) faca
     Escreval ("teste")
     i <- i+1
    FimEnquanto
      

      //saida

fimalgoritmo

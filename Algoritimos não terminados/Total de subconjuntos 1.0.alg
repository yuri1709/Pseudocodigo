algoritmo "TotalDeSubConjuntosDoConjunto"

var
   jump:caractere
   i,j,elementos,store1,store2,store3:inteiro
   sub:real
   n:vetor[0..2]de caractere
inicio

n[0] <- "a"
n[1] <- "b"
n[2] <- "c"

jump <- ""
    //Entrada

    //Processo
    elementos <- 2
    i <- 0
    //Subconjuntos
    Para i de 0 ate elementos faca  //subtração elementos - 1
         j <- 0
         EscrevaL (jump)

            Para j de 0 ate elementos faca //pega os valores do vetor
                  Escreva(" ",n[j])

                  Se (j<elementos) entao   // pôem a vírgula até o penúltimo
                      Escreva(",")         // elemento
                  FimSe
            FimPara

         Escreva (".") //saida

         elementos <- elementos - 1
         Se (elementos < 0) entao  // representar o conjunto vazio
            EscrevaL (jump)
            EscrevaL (" {}")
         FimSe

    FimPara
    j<- 0
    i<- 0
    elementos <- 2
    //Comparar elementos
    Para i de 0 ate elementos faca
         Para j de elementos ate 0 passo -1 faca
               Se(n[j] <> n[i]) e (n[j] < n[i])  entao
                  EscrevaL (" ",n[j],",",n[i])
               FimSe

         FimPara
    FimPara
fimalgoritmo

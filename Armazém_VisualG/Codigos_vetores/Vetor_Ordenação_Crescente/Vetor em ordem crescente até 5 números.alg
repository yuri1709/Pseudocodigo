algoritmo "Vetor em ordem crescente"

var
  i,j,k,aux:inteiro
  vet_number:vetor[0..4] de inteiro  //esse vetor armazena at� 5 dados inteiros
inicio
    //Entrada
    i <- 0
    Para i de 0 ate 4 faca
         Escreva("Insira 5 n�meros inteiros: ")
         Leia (vet_number[i])
    FimPara
    //Processo ordem crescente
    j <- 0
    Para j de 0 ate 4 faca
         k <- j + 1     //quando j = 0 k = 1,
         Para k de 0 ate 4 faca
              Se (vet_number[k] > vet_number[j]) entao // Se o n�mero da posi��o j
                  aux <- vet_number[k]            // do vetor for menor que n�mero
                  vet_number[k] <- vet_number[j]       // na posi��o k do vetor ent�o
                  vet_number[j] <- aux            // o n�mero vai para posi��o k
              FimSe
         FimPara
    FimPara
   //Sa�da
    i <- 0
    Escreval("N�meros na ordem crescente: ")
    Para i de 0 ate 4 passo 1 faca
      Escreva("{",vet_number[i]," }")
      Se (i<4) entao
         Escreva(",")
      FimSe
    FimPara
fimalgoritmo

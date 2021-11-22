algoritmo "somadorNumerico"

var
cont,n,soma,maior,menor:inteiro

inicio
    soma <- 0
    cont <- 1
    Enquanto (cont <= 5) faca
             Escreva("Insire o ",cont,"º número: ")
             Leia(n)

             Se (n > maior) entao
                 maior <- n
             FimSe

             Se (cont = 1) entao //Tirar a variavel "menor" do valor 0
                menor <- n
             senao
                Se (n < menor)  entao
                   menor <- n
                FimSe
             FimSe
             soma <- soma + n
             cont <- cont + 1
    FimEnquanto

    EscrevaL("A soma de todos os valores foi ",soma)
    EscrevaL(" .O maior número digitado foi: ",maior)
    EscrevaL(" .O menor número digirado foi: ",menor)
fimalgoritmo

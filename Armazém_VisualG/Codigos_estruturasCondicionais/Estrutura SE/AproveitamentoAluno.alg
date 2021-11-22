algoritmo "AproveitamentoAluno"

var
n1,n2,media:real
setor:caractere
inicio
//Entrada
      EscrevaL ("----------------------")
      EscrevaL ("---ESCOLA--DO--YURI---")
      EscrevaL ("----------------------")
      EscrevaL (" Aluno..")
      Escreva  (" Nota 1 :")
      Leia(n1)
      Escreva  (" Nota 2 :")
      Leia(n2)
      
//Processo
media <- (n1 + n2)/2

//Processo-Classificação
 Se (media <= 10) e (media >= 9) entao
    setor <- "A"
 senao
    Se (media <= 8) e (media >= 7) entao
       setor <- "B"
    senao
       Se (media <= 6) e (media >= 5) entao
          setor <- "C"
       senao
          Se (media <= 4) e (media >= 3) entao
             setor <- "D"
          senao
             Se (media <= 2) e (media >= 1) entao
                setor <- "E"
             senao
                setor <- "REPROVADO"
             fimSe
          fimSe
       fimSe
    fimSe
 fimSe
 //saida
 EscrevaL ("")
 EscrevaL (" Aluno..")
 EscrevaL (" Média Final:",media)
 EscrevaL (" Média:",setor)

fimalgoritmo

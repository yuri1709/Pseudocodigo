algoritmo "Tabela da verdade"
// Função : Ensinar a tabela da verdade ao aluno.
// Autor :  YuriConder
// Data : 31/10/2021
// Seção de Declarações
var
//variaveis tabela-verdade
   i,j,k:inteiro
   a,b,resultadoL:logico
   num1,num2,resultadoN:inteiro
   operador,operador2:caractere //operador2 foi criado para converter o valor do operador em E e OU
//variavel mostrar na tela
   ligado,desligado:logico
//variavel loading
  // posição do loading na tela
   PosY:inteiro
inicio

//TABELA DA VERDADE

j <- 0
k <- 0
EscrevaL ("==TABELA DA VERDADE==")
EscrevaL ("    __________")
Para i de 0 ate 3 faca
     Se (i > 1) entao
         j <- 1
     FimSe
     Se (i mod 2 = 0) entao
         k <- 1
     Senao
         k <- 0
     FimSe
     EscrevaL ("    |",j," | ",k," |")
FimPara
Escreva ("    __________")
EscrevaL ("")
EscrevaL ("")
EscrevaL ("")




//Entrada
   //Entrada do valor a
   EscrevaL ("ENTRADA DE DADOS")
   EscrevaL ("================")
   Escreva ("Primeiro valor: ")
   Leia (num1)
   Enquanto (num1 <> 0) e (num1 <> 1) faca
            Escreva ("Somente 0 ou 1:")
            Leia (num1)
   FimEnquanto


   //Entrada do operador
   Escreva ("Operador: ")
   Leia (operador)
   Enquanto (operador <> "+") e (operador <> "*") e (operador <> "E") e (operador <> ("OU")) faca
            Escreva ("Somente + ou * ou E ou OU: ")
            Leia (operador)
   FimEnquanto
   //Convertendo o operador E e OU para que funcione no escolha
   Se (operador = "E") entao
      operador <- "*"
   senao
      Se (operador = "OU") entao
         operador <- "+"
      FimSe
   FimSe


   //Entrada do valor b
   Escreva ("Segundo valor:")
   Leia (num2)
   Enquanto (num2 <> 0) e (num2 <> 1) faca
            Escreva ("Somente 0 ou 1:")
            Leia (num2)
   FimEnquanto


//processo - atribuindo valores
   //Valor de a
   Escolha num1
      Caso 0
            a <- falso
      Caso 1
            a <- verdadeiro
   FimEscolha
   //Valor de b
   Escolha num2
      Caso 0
            b <- falso
      Caso 1
            b <- verdadeiro
   FimEscolha
   
//processo - lógica
   //Entrada de operação e conversão em 0 e 1
  Escolha operador
      Caso "+"
            resultadoL <- a ou b
            Se (resultadoL = verdadeiro) entao
               resultadoN <- 1
            Senao
               resultadoN <- 0
            FimSe
            operador2 <- "OU"
      Caso "*"
            resultadoL<- a e b
            Se (resultadoL = verdadeiro) entao
               resultadoN <- 1
            Senao
               resultadoN <- 0
            FimSe
            operador2 <- "E"
  FimEscolha
  LimpaTela
//LOADING DA TELA
  Para i de 0 ate 8 faca
               //Determina a posição da palavra no console
     Escreva ("Loading":i)  //oque isso aqui faz é fenomenal !!!!!
     timer 10
     limpatela
  FimPara

    timer 0
//Saída
   EscrevaL ("Resultado:")
   EscrevaL ("")
   //Saída verdadeiro / falso
   EscrevaL (a," ", operador2, b, " =",resultadoL)
   //Saída 0 / 1
   EscrevaL (num1," ", operador ,num2, " =",resultadoN)
fimalgoritmo

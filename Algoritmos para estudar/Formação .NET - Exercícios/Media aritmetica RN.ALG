Algoritmo "semnome"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Simone
// Descri��o   : Calcula a nota dos alunos e aprova��o deles.
// Autor(a)    : Renan Gonzaga Rodrigues
// Data atual  : 22/10/2021
Var
   // Se��o de Declara��es das vari�veis
   N1,N2,N3,MA: real
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreval ("Nota1",N1)
   leia (N1)
   escreval ("Nota2",N2)
   leia (N2)
   escreval ("Nota3",N3)
   leia (N3)
   MA <- (N1+N2+N3)/3

   escreval ("Media",MA)
   se MA>= 7 entao
      escreval ("Aprovado")
   senao
      se MA<= 5 entao
         escreval ("Reprovado")
      senao
         escreval ("Recupera��o")
      fimse
   fimse

Fimalgoritmo
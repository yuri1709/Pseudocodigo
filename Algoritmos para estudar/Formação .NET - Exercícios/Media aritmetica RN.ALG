Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Simone
// Descrição   : Calcula a nota dos alunos e aprovação deles.
// Autor(a)    : Renan Gonzaga Rodrigues
// Data atual  : 22/10/2021
Var
   // Seção de Declarações das variáveis
   N1,N2,N3,MA: real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

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
         escreval ("Recuperação")
      fimse
   fimse

Fimalgoritmo
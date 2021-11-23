Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2021
Var
// Seção de Declarações das variáveis 
Nome:caracter
Sal,Des,Sn: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("Nome:")
Leia (Nome)
escreval ("Salário:")
leia (Sal)
se (Sal>=3000) entao
Des <-(Sal*0.10)
senao
Des <-(Sal*0.07)
fimse
Sn <- Sal-Des
escreval ("Nome:", Nome)
escreval ("Salário com Desconto:", Sn)
escreval ("Desconto:", Des)
Fimalgoritmo
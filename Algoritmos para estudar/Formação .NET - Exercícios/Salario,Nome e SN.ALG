Algoritmo "semnome"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2021
Var
// Se��o de Declara��es das vari�veis 
Nome:caracter
Sal,Des,Sn: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval ("Nome:")
Leia (Nome)
escreval ("Sal�rio:")
leia (Sal)
se (Sal>=3000) entao
Des <-(Sal*0.10)
senao
Des <-(Sal*0.07)
fimse
Sn <- Sal-Des
escreval ("Nome:", Nome)
escreval ("Sal�rio com Desconto:", Sn)
escreval ("Desconto:", Des)
Fimalgoritmo
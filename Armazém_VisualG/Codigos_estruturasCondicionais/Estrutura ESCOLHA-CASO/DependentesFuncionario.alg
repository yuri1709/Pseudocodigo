algoritmo "DependentesFuncionario"

var
name:caractere
dep:inteiro
salario:real
inicio
//Entrada
      EscrevaL ("---COMISS�O--FUNCIO�RIOS---")
      Escreva  (" Nome do funcion�rio:")
      Leia(name)
      Escreva  ("Qual � o sal�rio do Funcion�rio? R$")
      Leia(salario)
      Escreva  ("Qual a quantidade de dependentes:")
      Leia(dep)
//Processo
Escolha dep
    CASO 0
         salario <- salario + (salario*5/100)
    CASO 1,2,3
         salario <- salario + (salario*10/100)
    CASO 4,5,6
         salario <- salario + (salario*15/100)
    OUTROCASO
         salario <- salario + (salario*18/100)
fimescolha
//SAIDA
Escreval ("O novo sal�rio de ",name, " �  R$",salario:5:2)
fimalgoritmo

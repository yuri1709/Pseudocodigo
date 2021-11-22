algoritmo "DependentesFuncionario"

var
name:caractere
dep:inteiro
salario:real
inicio
//Entrada
      EscrevaL ("---COMISSÃO--FUNCIOÁRIOS---")
      Escreva  (" Nome do funcionário:")
      Leia(name)
      Escreva  ("Qual é o salário do Funcionário? R$")
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
Escreval ("O novo salário de ",name, " é  R$",salario:5:2)
fimalgoritmo

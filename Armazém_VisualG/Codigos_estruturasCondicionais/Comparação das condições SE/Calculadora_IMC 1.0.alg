algoritmo "CalculadoraIMC-1.0"
// Função : Utiliza-se a função SE SIMPLES
// Autor :
// Data : 04/07/2021
// Seção de Declarações 
var
peso,altura,imc:real
inicio
escrevaL("Calculadora IMC")
escrevaL("Será que você é uma pessoa saúdavel ? Vamos ver!")
escrevaL("")
//entrada
escreva("Altura(m):")
leia(altura)
escreva("Peso(kg):")
leia(peso)

//processo
imc <- peso/(altura^2)

escrevaL("IMC:",imc:5:2)
escreva("Você está classificado com : ")
 se (imc <= 18.5) entao
    escreva("Peso Baixo")
 fimSe
 se (imc > 18.5) e (imc <= 24.9) entao
    escreva("Peso Normal")
 fimSe
 se (imc > 25) e (imc <= 29.9) entao
    escreva("Sobrepeso")
 fimSe
 se (imc > 30) e (imc <= 34.9) entao
    escreva("Obesidade (Grau I)")
 fimSe
 se (imc > 36) e (imc <= 39.9) entao
    escreva("Obesidade Severa (Grau II)")
 fimSe
 se (imc >= 40) entao
    escreva("Obesidade Mórbida (Grau III)")
 fimSe
 

fimalgoritmo

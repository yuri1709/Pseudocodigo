algoritmo "CalculadoraIMC-2.0"
// Fun��o : Utiliza-se a fun��o SE ANINHADA
// Autor :
// Data : 04/07/2021
// Se��o de Declara��es
var
peso,altura,imc:real
inicio
escrevaL("Calculadora IMC")
escrevaL("Ser� que voc� � uma pessoa sa�davel ? Vamos ver!")
escrevaL("")
//entrada
escreva("Altura(m):")
leia(altura)
escreva("Peso(kg):")
leia(peso)

//processo
imc <- peso/(altura^2)

escrevaL("IMC:",imc:5:2)
escreva("Voc� est� classificado com : ")

 se (imc <= 18.5) entao
    escreva("Peso Baixo")
 senao
      se (imc > 18.5) e (imc <= 24.9) entao
          escreva("Peso Normal")
      senao
           se (imc > 25) e (imc <= 29.9) entao
              escreva("Sobrepeso")
           senao
                se (imc > 30) e (imc <= 34.9) entao
                   escreva("Obesidade (Grau I)")
                senao
                     se (imc > 36) e (imc <= 39.9) entao
                        escreva("Obesidade Severa (Grau II)")
                     senao
                          se (imc >= 40) entao
                             escreva("Obesidade M�rbida (Grau III)")
                          fimSe
                     fimSe
                fimSe
           fimSe
      fimSe
 fimSe
fimalgoritmo

algoritmo "Calculador_Implant_Range_DF1"
// Fun��o :
// Autor :
// Data : 10/09/2021
// Se��o de Declara��es 
var
   resultado,damage,bonus:real
inicio
// Se��o de Comandos 
   Escreva ("Weapon damage per hit:")
   Leia (damage)
   Escreva ("Implant bonus:")
   Leia (bonus)

   resultado <- damage * ((100 + bonus)/100)
   EscrevaL ("Final damage =",resultado," per hit")
fimalgoritmo

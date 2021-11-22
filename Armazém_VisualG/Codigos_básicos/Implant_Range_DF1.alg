algoritmo "Calculador_Implant_Range_DF1"
// Função :
// Autor :
// Data : 10/09/2021
// Seção de Declarações 
var
   resultado,damage,bonus:real
inicio
// Seção de Comandos 
   Escreva ("Weapon damage per hit:")
   Leia (damage)
   Escreva ("Implant bonus:")
   Leia (bonus)

   resultado <- damage * ((100 + bonus)/100)
   EscrevaL ("Final damage =",resultado," per hit")
fimalgoritmo

algoritmo "NotasDeUmCaixa"
//ANOTAÇÕES

// MOD -> Resto da divisão
// DIV -> quociente de uma divisão
var

   n,n1,n2,n5,n10,n20,n50,n100,resto,resto1,resto2,resto3,resto4,input,q,r:inteiro
inicio
  Escreva("valor: ")
  Leia (n)
  q <- n div 50
  r <- n mod 50
  escrevaL("Cociente da divisão ",q)
  escrevaL("Resto da divisão ",r)
  escrevaL("Dividendo:",r," +(",q," x50 ) =",r+(q*50))

  n100 <- n div 100
  resto <- n mod 100
  n50 <- resto div 50
  resto1 <- resto mod 50
  n20 <- resto1 div 20
  resto2 <- resto1 mod 20
  n10 <- resto2 div 10
  resto3 <- resto2 mod 10
  n5 <- resto3 div 5
  resto4 <- resto3 mod 5
  n2 <- resto4 div 2
  n1 <- resto4 mod 2


  EscrevaL ("")
  EscrevaL (" Valor de ",n," em notas de:")
  EscrevaL (n100," x notas de 100")
  EscrevaL (n50," x notas de 50")
  EscrevaL (n20," x notas de 20")
  EscrevaL (n10," x notas de 10")
  EscrevaL (n5," x notas de 5")
  EscrevaL (n2," x notas de 2")
  EscrevaL (n1," x notas de 1")

fimalgoritmo

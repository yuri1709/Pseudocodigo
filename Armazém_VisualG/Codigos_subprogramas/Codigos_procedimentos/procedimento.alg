algoritmo "DetectorPesado"

var
  I:Inteiro
  N, pesado:Caractere
  P, Mai: Real
  procedimento Topo()
   inicio
   LimpaTela
   EscrevaL("")
   EscrevaL("Detector")
   EscrevaL("Maior peso até agora: ",Mai)
  FimProcedimento
  
  Procedimento Y()
  inicio
  EscrevaL ("YURI")
  FimProcedimento

inicio
   Topo()

   Para I <- 1 ate 5 faca
        Escreva("Digite o nome:")
        Leia (N)
        Escreva("Digite o peso de ",N,":")
        Leia(P)
         Se (P>Mai) entao
            MAI <- P
            Pesado <- N
         FimSe
         Topo()
   FimPara

   Topo()
   EscrevaL ("A pessoa mais pesada foi ", Pesado, ",com ",Mai," quilos")
fimalgoritmo

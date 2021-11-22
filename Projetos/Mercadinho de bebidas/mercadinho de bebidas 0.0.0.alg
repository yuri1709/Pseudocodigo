algoritmo "semnome"
// Função :
// Autor : Yuri Conder Roliz Sabbagh
// Data : 23/07/2021
// Seção de Declarações 
var
   ENTER,alterar_mais:caractere
   soma:real
   i,j,menu,caixa:inteiro
   pv:vetor[1..10,1..2] de caractere
   buy:vetor[1..10] de caractere
inicio
//produto
pv[1,1] <- "Pepsi"
pv[2,1] <- "Coca-Cola"
pv[3,1] <- "Soda"
pv[4,1] <- "Fanta"
pv[5,1] <- "Grapete"
pv[6,1] <- "Suco de laranja"
pv[7,1] <- "Suco de maracujá"
pv[8,1] <- "Suco de morango"
pv[9,1] <- "Suco de manga"
pv[10,1] <- "Suco de limão"

//menu

     Enquanto j = 0 faca
      EscrevaL ("------MENU------")
      EscrevaL ("1.Ajustar preços")
      EscrevaL ("2.Caixa")
      EscrevaL ("4.Sair")
      EscrevaL ("----------------")
      Enquanto (menu <> 1) e (menu <> 4) e (menu <> 2)faca
         Leia (menu)
      FimEnquanto
     j <- menu

//Processo
 Escolha menu
         Caso 1
            j<-0
            limpatela
            Enquanto (menu = 1) faca
               EscrevaL ("Alterar preço do produto:")
               EscrevaL ("-------------------------")
               Para i de 1 ate 10 faca
                  EscrevaL (i,".",pv[i,1])
               FimPara
               EscrevaL ("-------------------------")
               Escreva ("Escolher:")
               Leia (i)
               EscrevaL ("")
               Escreva (i,".",pv[i,1]," preço R$")
               Leia (pv[i,2])

               Se (pv[i,2] <> "") entao
                  Escreva (" Preço ",pv[i,1]," alterado com sucesso!")
                  EscrevaL ("")
                  EscrevaL ("")
               Senao
                  Se (pv[i,2] = "") entao
                     Enquanto (pv[i,2] = "") faca
                        Escreva ("O valor do preço está em branco,insira um valor em R$")
                        Leia (pv[i,2])
                     FimEnquanto
               Escreva ("Preço ",pv[i,1]," alterado com sucesso!")
               EscrevaL ("")
               EscrevaL ("")
                  FimSe
               FimSe

            EscrevaL ("Alterar mais um produto ? S/N")
            Leia (alterar_mais)
            Se (alterar_mais = "S") entao
               limpatela
            Senao
               Se (alterar_mais = "N") entao  //sai do loop menu=1
                  menu <- 0
               FimSe
            FimSe
            FimEnquanto

         Limpatela

         caso 2
            j<-0
            Limpatela
            //menu caixa
            Enquanto menu = 2 faca
               EscrevaL ("1.Bebida")
               EscrevaL ("2.Comida(EM BREVE!)")
               EscrevaL ("4.Voltar ao menu")
               Leia (caixa)
               Escolha caixa
                        caso 1
                            Limpatela
                            EscrevaL ("Caixa-Bebidas")
                            EscrevaL ("")
                            Para i de 1 ate 10 faca
                              Escreva (pv[i,1])
                              EscrevaL (" = R$",pv[i,2])
                            FimPara
                            Leia (ENTER)
                            limpatela
                           //Enquanto
                           //Leia (buy[i])  continuar depois

                        caso 4
                           limpatela
                           menu <- 0

                        outrocaso
                           EscrevaL ("outrocaso")

               FimEscolha
            FimEnquanto

         caso 4
             //Sair do sistema
             EscrevaL ("Programa finalizado com sucesso!")


         outrocaso
            EscrevaL ("Não existe esta opção")
 FimEscolha


//saída
Se (menu = 1) entao
   EscrevaL ("Preço total :",caracpnum(pv[8,2]) + caracpnum(pv[5,2]):5:2)
FimSe
 // Mostrar os produtos escolhidos

     FimEnquanto
fimalgoritmo

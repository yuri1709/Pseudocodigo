algoritmo "semnome"
// Fun��o :
// Autor : Yuri Conder Roliz Sabbagh
// Data : 23/07/2021.
// Nesta edi��o ser� adiconanda um somador no caixa.
// corrigido:problema na hora de sair do looping do caixa.
// Corrigido interface visual dos menus.
//Foi adicionada a var [mostra-produtor-add] para resolver o bug do carrinho.
//Substitui o j pela var [mostrar_menu].
//<23.08.2021>Adicionado o PrecoVazio[] para mostrar o pre�o alterado no menu>Asustar Pre�o.
//<27.08.2021>Substiui��o da Tela_Menu e Menu caixa por Procedimentos.
//<27.08.2021>Adicionado sistema de soma de produtos/adicionado uma nota fiscal ao final da compra.
//<29.09.2021>Organiza��o de vari�veis.
//<29.09.2021>Bug: Ao adicionar uma v�rgula no pre�o dos produtos,buga o Total da compra
var
   ENTER:caractere
   i,x:inteiro
   //menu var
   menu,mostrar_menu:inteiro

   //menu Ajustar-pre�os var
   PrecoAlterado:vetor[1..10]de caractere
   alterar_mais:caractere

   //menu Caixa var
   caixa,mostra_produto_add:inteiro

   //menu carrinho
   total_buy:real
   store_pv:vetor[1..10] de real


   pv:vetor[1..10,1..2] de caractere
   buy:vetor[1..10,1..2] de caractere


//Procedimentos:
//-----------------------------------------------------------------------------


//Tela_Menu
Procedimento Tela_Menu()
Inicio
EscrevaL ("------MENU------")
EscrevaL ("1.Ajustar pre�os")
EscrevaL ("2.Caixa")
EscrevaL ("4.Sair")
EscrevaL ("----------------")
Enquanto (menu <> 1) e (menu <> 4) e (menu <> 2)faca
   Leia (menu)
FimEnquanto
mostrar_menu <- menu
FimProcedimento

//Menu_Caixa
Procedimento Menu_Caixa()
Inicio
EscrevaL ("Menu-Caixa")
EscrevaL ("--------------------")
EscrevaL ("1.Bebida")
EscrevaL ("2.Comida(EM BREVE!)")
EscrevaL ("3.Carrinho")
EscrevaL ("4.Voltar ao menu")

FimProcedimento
//------------------------------------------------------------------------------

inicio
//produto
pv[1,1] <- "Pepsi"                                                              // pv:vetor Coluna [2] = armazena o pre�o
pv[2,1] <- "Coca-Cola"
pv[3,1] <- "Soda"
pv[4,1] <- "Fanta"
pv[5,1] <- "Grapete"
pv[6,1] <- "Suco de laranja"
pv[7,1] <- "Suco de maracuj�"
pv[8,1] <- "Suco de morango"
pv[9,1] <- "Suco de manga"
pv[10,1] <- "Suco de lim�o"



//menu

     Enquanto mostrar_menu = 0 faca

            Tela_Menu()

//Processo
 Escolha menu
         Caso 1
            mostrar_menu<-0
            limpatela
            //menu Ajustar-pre�os
            Enquanto (menu = 1) faca
               EscrevaL ("Alterar pre�o do produto:")
               EscrevaL ("-------------------------")
               Para i de 1 ate 10 faca

                  EscrevaL (i,".",pv[i,1],PrecoAlterado[i])
               FimPara
               EscrevaL (" 0.Sair")
               EscrevaL ("-------------------------")
               Escreva ("Escolher:")
               Leia (i)

               Se (i = 0) entao                                                  //Se-Vai at� o final do c�digo Caso 1
                  menu <- 0
               Senao
                  EscrevaL ("")
                  Escreva (i,".",pv[i,1]," pre�o R$")
                  Leia (pv[i,2])

                  Se (pv[i,2] <> "")e(pv[i,2] <> " ")e(pv[i,2] <> "   ") entao
                     PrecoAlterado[i] <- " = RS: " + pv[i,2]
                     Escreva (" Pre�o ",pv[i,1]," alterado com sucesso!")
                     EscrevaL ("")
                     EscrevaL ("")
                  Senao
                     Se (pv[i,2] = "") entao
                        Enquanto (pv[i,2] = "") faca
                           Escreva ("O valor do pre�o est� em branco,insira um valor em R$")
                           Leia (pv[i,2])
                        FimEnquanto
                        Escreva ("Pre�o ",pv[i,1]," alterado com sucesso!")
                        EscrevaL ("")
                        EscrevaL ("")
                     FimSe
                  FimSe

                  EscrevaL ("Alterar mais um produto ? S/N")
                  Leia (alterar_mais)
                  Enquanto (alterar_mais <> "S") e (alterar_mais <> "N") faca
                     EscrevaL ("Alterar mais um produto ? S/N")
                     Leia (alterar_mais)
                  FimEnquanto
                  Se (alterar_mais = "S") entao
                     Limpatela
                  Senao
                     Se (alterar_mais = "N") entao                               //sai do loop menu=1
                        menu <- 0
                     FimSe
                  FimSe
               FimSe
            FimEnquanto
         Limpatela


         Caso 2
            mostrar_menu <-0
            Limpatela

            //menu caixa
            Enquanto menu = 2 faca

                   Menu_Caixa()

               Leia(caixa)
               Escolha caixa
                        caso 1
                            //Caixa-Bebidas
                            Limpatela
                            EscrevaL ("Caixa-Bebidas")
                            EscrevaL ("")
                            EscrevaL ("---------------------------------")
                            Para i de 1 ate 10 faca
                              Escreva (i,".",pv[i,1])
                              EscrevaL (" = R$",pv[i,2])
                            FimPara
                            EscrevaL ("---------------------------------")

                           i<-1
                           Enquanto caixa  = 1 faca
                              Leia (x)
                              Se (x = 0) entao
                                 caixa <- 0
                                 Limpatela
                              Senao
                                 EscrevaL("O produto ",pv[x,1]," foi adicionado ao carrinho")
                                 Se (x > 0) entao
                                    buy[i,1] <- pv[x,1]
                                    buy[i,2] <- pv[x,2]
                                    i <- i+1
                                 FimSe
                              FimSe
                              Se (x = 0) entao
                                 i <- i-1                                        //i <-i-1 para n�o duplicar o n�mero de produtos add ao vetor buy[i,j]
                                 mostra_produto_add <- i
                              FimSe
                           FimEnquanto


                        caso 3
                           //menu-carrinho
                           Limpatela

                           EscrevaL ("---Seu carrinho---")
                           EscrevaL ("Itens:")
                           Se (i = 0) entao
                              EscrevaL ("O seu carrinho est� vazio")
                              EscrevaL ("")
                              EscrevaL ("Pressione ENTER para voltar ao menu")
                              Leia (ENTER)
                              Limpatela
                           Senao
                              Para i de 1 ate mostra_produto_add faca
                                 EscrevaL (buy[i,1],"= R$:",buy[i,2])
                              FimPara
                              EscrevaL ("------------------")
                              EscrevaL ("")
                              EscrevaL ("Est� tudo certo ?")
                              EscrevaL ("Pressione a tecla ENTER para a confirma��o")
                              Leia (ENTER)
                              Limpatela
                              //Total da compra
                              Para i de 1 ate mostra_produto_add faca
                                 store_pv[i] <- (caracpnum(buy[i,2]))            //convers�o de carctere para real
                              FimPara

                              Para i de 1 ate mostra_produto_add faca
                                 total_buy <- total_buy + store_pv[i]
                              FimPara
                              EscrevaL ("=======================================")
                              EscrevaL ("�            NOTA FISCAL              �")
                              EscrevaL ("=======================================")
                              EscrevaL ("�                                     �")
                              EscrevaL ("�Produtos:                            �")
                              EscrevaL ("�_____________________________________�")
                              Para i de 1 ate mostra_produto_add faca
                                 EscrevaL ("�.",buy[i,1],"                      ")
                              FimPara
                              EscrevaL ("�                                     �")
                              EscrevaL ("�-------------------------------------�")
                              EscrevaL ("Valor total: R$",total_buy:5:2)
                              EscrevaL ("�-------------------------------------�")
                              EscrevaL ("            Obrigado.                  ")
                              EscrevaL ("          Volte sempre!                ")
                              Leia (ENTER)                                      //para nao mostrar o menu no final
                           FimSe
                           
                           
                        caso 4
                           limpatela
                           menu <- 0


                        outrocaso
                           EscrevaL ("outrocaso")

               FimEscolha
            FimEnquanto


         Caso 4
             //Sair do sistema
             EscrevaL ("Programa finalizado com sucesso!")


         Outrocaso
            EscrevaL ("N�o existe esta op��o")
 FimEscolha


//sa�da
Se (menu = 1) entao
   EscrevaL ("Pre�o total :",caracpnum(pv[8,2]) + caracpnum(pv[5,2]):5:2)
FimSe
 // Mostrar os produtos escolhidos

     FimEnquanto
fimalgoritmo

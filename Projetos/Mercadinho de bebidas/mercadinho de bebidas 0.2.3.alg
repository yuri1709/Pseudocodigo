algoritmo "semnome"
// Função :
// Autor : Yuri Conder Roliz Sabbagh
// Data : 23/07/2021
// Nesta edição será adiconanda um somador no caixa
// corrigido:problema na hora de sair do looping do caixa
// Corrigido interface visual dos menus
//Foi adicionada a var [mostra-produtor-add] para resolver o bug do carrinho.
//Substitui o j pela var [mostrar_menu]
//<23.08.2021>Adicionado o PrecoVazio[] para mostrar o preço alterado no menu>Asustar Preço
//<27.08.2021>Substiuição da Tela_Menu e Menu caixa por Procedimentos
//<27.08.2021>Adicionado sistema de soma de produtos/adicionado uma nota fiscal ao final da compra
var
   ENTER,alterar_mais:caractere
   total_buy:real
   i,mostrar_menu,x,mostra_produto_add,menu,caixa,store_count:inteiro
   pv:vetor[1..10,1..2] de caractere
   store_pv:vetor[1..10] de real
   buy:vetor[1..10,1..2] de caractere
   PrecoAlterado:vetor[1..10]de caractere

//Procedimentos:
//-----------------------------------------------------------------------------

//Tela_Menu
Procedimento Tela_Menu()
Inicio
EscrevaL ("------MENU------")
EscrevaL ("1.Ajustar preços")
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
pv[1,1] <- "Pepsi"                                                              // pv:vetor Coluna [2] = armazena o preço
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

     Enquanto mostrar_menu = 0 faca

            Tela_Menu()

//Processo
 Escolha menu
         Caso 1
            mostrar_menu<-0
            limpatela
            //menu Ajustar-preços
            Enquanto (menu = 1) faca
               EscrevaL ("Alterar preço do produto:")
               EscrevaL ("-------------------------")
               Para i de 1 ate 10 faca

                  EscrevaL (i,".",pv[i,1],PrecoAlterado[i])
               FimPara
               EscrevaL (" 0.Sair")
               EscrevaL ("-------------------------")
               Escreva ("Escolher:")
               Leia (i)

               Se (i = 0) entao                                                  //Se-Vai até o final do código Caso 1
                  menu <- 0
               Senao
                  EscrevaL ("")
                  Escreva (i,".",pv[i,1]," preço R$")
                  Leia (pv[i,2])

                  Se (pv[i,2] <> "")e(pv[i,2] <> " ")e(pv[i,2] <> "   ") entao
                     PrecoAlterado[i] <- " = RS: " + pv[i,2]
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
                                 i <- i-1                                        //i <-i-1 para não duplicar o número de produtos add ao vetor buy[i,j]
                                 mostra_produto_add <- i
                              FimSe
                           FimEnquanto


                        caso 3
                           //menu-carrinho
                           Limpatela

                           EscrevaL ("---Seu carrinho---")
                           EscrevaL ("Itens:")
                           Se (i = 0) entao
                              EscrevaL ("O seu carrinho está vazio")
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
                              EscrevaL ("Está tudo certo ?")
                              EscrevaL ("Pressione a tecla ENTER para a confirmação")
                              Leia (ENTER)
                              Limpatela
                              //Total da compra
                              Para i de 1 ate mostra_produto_add faca
                                 store_pv[i] <- (caracpnum(buy[i,2]))            //conversão de carctere para real
                              FimPara

                              Para i de 1 ate mostra_produto_add faca
                                 total_buy <- total_buy + store_pv[i]
                              FimPara
                              EscrevaL ("=======================================")
                              EscrevaL ("¦            NOTA FISCAL              ¦")
                              EscrevaL ("=======================================")
                              EscrevaL ("¦                                     ¦")
                              EscrevaL ("¦Produtos:                            ¦")
                              EscrevaL ("¦_____________________________________¦")
                              Para i de 1 ate mostra_produto_add faca
                                 EscrevaL ("¦.",buy[i,1],"                      ")
                              FimPara
                              EscrevaL ("¦                                     ¦")
                              EscrevaL ("¦-------------------------------------¦")
                              EscrevaL ("Valor total: R$",total_buy:5:2)
                              EscrevaL ("¦-------------------------------------¦")
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
            EscrevaL ("Não existe esta opção")
 FimEscolha


//saída
Se (menu = 1) entao
   EscrevaL ("Preço total :",caracpnum(pv[8,2]) + caracpnum(pv[5,2]):5:2)
FimSe
 // Mostrar os produtos escolhidos

     FimEnquanto
fimalgoritmo

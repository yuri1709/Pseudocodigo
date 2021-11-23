Algoritmo "semnome"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor  : Aqui você escreve o nome do(a) professor(a).
// Descrição  : Aqui você descreve o que o programa faz! (função)
// Autor(a)  : Nome do(a) aluno(a)
// Data atual  : 22/04/2019
Var
// Seção de Declarações das variáveis
     var_vec: vetor [1..10,1..10] de inteiro
     valor: inteiro
     com: caractere
     i: inteiro
     j: inteiro
     x: inteiro
     y: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
     i <- 0
     j <- 0
     com <- "n"
     enquanto (com = "n") faca
                       limpatela
                       escreval ("Digite a posicao A[i,j]")
                       escreva ("Linha: ")
                       leia (i)
                       escreva ("Coluna: ")
                       leia (j)
                       escreva ("Digite um valor para a posição: ")
                       leia (valor)
                      x <- 1    //x e y recebem 1 porque nessa matriz não existe a posição 0 e 0
                      y <- 1
                      enquanto (x <= 10) faca
                                         enquanto (y <= 10) faca
                                                            se (valor = var_vec[x,y]) entao
                                                                 limpatela
                                                                 escreva("Valor repetido em X",x," e Y",y,". Digite um valor: ")
                                                                 leia (valor)
                                                                 y <- 0
                                                                 x <- 1
                                                           fimse
                                                           y <- y + 1
                                           fimenquanto
                                           x <- x + 1
                                           y <- 1
                      fimenquanto
                      var_vec[i,j] <- (valor)
                      limpatela
                      escreva ("Escolha (n = nova entrada, i = imprimir e sair): ")
                      leia (com)
                      escolha com
                                     caso "n"
                                               com <- "n"
                                     caso "i"
                                               interrompa
                                     outrocaso
                                               enquanto ((com <> "n") e (com <> "i")) faca
                                                                 limpatela
                                                                 escreval("Opção incorreta.")
                                                                 escreva("Escolha (n = nova entrada, i = imprimir e sair): ")
                                                                 leia (com)
                                               fimenquanto
                      fimescolha
     fimenquanto
     x <- 1
     y <- 1
     enquanto (x <= 10) faca
                        i <- x
                        x <- x + 1
                        enquanto (y <= 10) faca
                                           j <- y
                                           escreva (Var_vec[i,j]," ")
                                           y <- y + 1
                        fimenquanto
                        y <- 1    // y recebe 1 para preencher a coluna de cada linha que no caso é comandada pelo x
                       escreval()
     fimenquanto
Fimalgoritmo

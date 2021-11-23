algoritmo "semnome"

var
   j,v,menu,start,deposito,saldo,n100,n50,n20,n10,n5,n2,n1,resto,resto1,resto2,resto3,resto4:inteiro
   enter,retornar,password:caractere
inicio
    //Entrada
   start <- 1
   menu <- 0

    //menu caixa
   Enquanto (menu=1) ou (menu=2) ou (menu=3) ou (start= 1) faca//#1
    EscrevaL ("ATM-YURI")
    EscrevaL ("")
    EscrevaL ("Menu")
    EscrevaL ("1.Saldo")
    EscrevaL ("2.Sacar")
    Escreval ("3.Depósito")
    EscrevaL ("0.Sair")
    Leia (menu)

    Escolha menu
      CASO 0
         start <- 0
      CASO 1
         menu <- 1
      CASO 2
         menu <- 2
      CASO 3
         menu <- 3
    FimEscolha



    //processo (menu 1)
    Se (menu = 1) entao
        EscrevaL("SALDO R$",saldo:5:2)
    FimSe



    //processo (menu 2)

         //Entrada Saque
    Se (menu = 2) entao
      limpatELA
      v <- 0
      Se (saldo > v) entao
         EscrevaL ("Valor saque R$:")
         Leia (v)
         Enquanto (v > saldo) faca
              EscrevaL ("Saldo insuficiente")
              EscrevaL ("Favor tentar novamente")
              EscrevaL ("")
              Escreva  ("Valor saque R$:")
              Leia (v)
         FimEnquanto
              //Processo verificação da senha
              Escreva ("Senha da conta ->")
              Leia(password)
              j <- 2
              Se (password = "penelope") entao
                  saldo <- saldo - v
              senao
                  EscrevaL ("Senha incorreta,tente novamente!")
                  Enquanto (password <> "penelope") e (j > 0) faca
                      EscrevaL ("Você só tem ",j," tentativas!")
                      leia(password)
                      Se (password = "penelope") entao
                         j <- 0
                         saldo <- saldo - v
                      FimSe
                      j <- j - 1
                  FimEnquanto
              FimSe
            n100 <- v div 100
            resto <- v mod 100
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
             //Saida Saque
            EscrevaL ("")
       Se (password = "penelope") entao
            Se (v < 2) entao
               EscrevaL ("Valor sacado R$",v," real")
            senao
               EscrevaL (".O valor sacado foi R$",v:5:2," reais")
            FimSe

            EscrevaL (n100:2," x notas de 100")
            EscrevaL (n50:2," x notas de 50")
            EscrevaL (n20:2," x notas de 20")
            EscrevaL (n10:2," x notas de 10")
            EscrevaL (n5:2," x notas de 5")
            EscrevaL (n2:2," x notas de 2")
            EscrevaL (n1:2," x moedas de 1")
       FimSe
      senao
         Se (password <> "penelope") entao
         EscrevaL("Saldo insuficiente!")
         FimSe
      FimSe
    FimSe




    //Processo (menu 3)
    Se (menu = 3) entao
        retornar <- ""
        menu <- 0 //inibe o Continuar menu caixa
        Escreva ("Depositar R$:")
        Leia(deposito)
        saldo <-saldo + deposito

        EscrevaL("")
        Escreva ("Deseja realizar outra operação S/N ? ")
        Leia (retornar)
        Enquanto (retornar <> "S") e (retornar <> "N") faca
            Escreva("S/N ? ")
            Leia (retornar)
        FimEnquanto

        Se (retornar = "S") entao
            limpatela
        senao
           Se (retornar = "N") entao
               start <- 0
               menu <- 0 //inibe o Continuar menu caixa
               EscrevaL("Obrigado pela preferência!")
           FimSe
        FimSe
    FimSe



   //Continuar menu caixa
   Se (menu <> 0)entao
      EscrevaL("")
      EscrevaL("Pressione a tecla ENTER para voltar ao menu")
      Leia(enter)

      Enquanto enter <> "" faca
         leia(enter)
      FimEnquanto
     Se (enter = "") entao
         limpatela
     FimSe
   FimSe

   FimEnquanto//#1
fimalgoritmo

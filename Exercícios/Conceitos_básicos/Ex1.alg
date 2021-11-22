algoritmo "Exercício1"

var
   n1,n2,q,r:inteiro
   n3,n4,soma,divi10,raiz2,multi,potencia:real
inicio
    //Entrada
    EscrevaL ("Insira:")
    EscrevaL  (" Números inteiros.")
    Escreva(" N1: ")
    Leia (n1)
    Escreva  (" N2: ")
    Leia (n2)
    EscrevaL  (" Números reais:")
    Escreva(" N3: ")
    Leia (n3)
    Escreva  (" N4: ")
    Leia (n4)

    //processo
    soma <- (n1+n2+n3+n4)
    multi <- (n1*n2*n3*n4)
    raiz2 <- Raizq(n1+n2+n3+n4)
    potencia <- (n1+n2+n3+n4)^2
    divi10 <- (n3+n4)/10

    q <- n1 div n2
    r <- n1 mod n2
    
    //saida
    EscrevaL("")
    EscrevaL("Soma=",soma)
    EscrevaL("Multiplicação=",multi)
    EscrevaL("Raiz quadrada=",raiz2:5:2)
    EscrevaL("Potenciação=",potencia)
    EscrevaL("Divisão por 10=",divi10)
fimalgoritmo

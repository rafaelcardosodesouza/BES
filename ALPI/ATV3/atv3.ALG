algoritmo "duplicados"
  //bom dia, boa noite, o trabalho foi realizado usando
  //visualg 3.0.7.0
var
   capacitacao1: vetor[1..100] de inteiro
   capacitacao2: vetor[1..100] de inteiro
   duplicados: vetor[1..100] de inteiro
   indiceDuplicados: inteiro
   i, j, k, qtdCap1, qtdCap2: inteiro
   encontrouDuplicados: logico

inicio
   encontrouDuplicados <- falso

   escreval("")
   escreval("____________________________________________________")
   escreval("|                Capacita��o 1:                     |")
   escreval("|Quantos funcion�rios ir�o fazer a capacita��o 1?   |")
   escreval("|___________________________________________________|")
   escreva("->  ")
   leia(qtdCap1)
   escreval("")
   escreval("Digite as informa��es solicitadas a seguir")
   escreval("")
   Para i de 1 at� qtdCap1 fa�a
      Escreva("Digite o c�digo do ", i, "� funcion�rio: ")
      Leia(capacitacao1[i])
   fimpara

   escreval("")
   escreval("____________________________________________________")
   escreval("|                Capacita��o 2:                     |")
   escreval("|Quantos funcion�rios ir�o fazer a capacita��o 2?   |")
   escreval("|___________________________________________________|")
   escreva("->  ")

   leia(qtdCap2)
   escreval("")
   escreval("Digite as informa��es solicitadas a seguir")
   escreval("")
   Para i de 1 at� qtdCap2 fa�a
      Escreva("Digite o c�digo do ", i, "� funcion�rio: ")
      Leia(capacitacao2[i])
   fimpara

   //aqui ele verifica os dois array, caso encontre algo duplicado
   //ele salva no indiceDuplicados
   indiceDuplicados <- 1
   Para i de 1 at� qtdCap1 fa�a
      Para j de 1 at� qtdCap2 fa�a
         Se capacitacao1[i] = capacitacao2[j] ent�o
            duplicados[indiceDuplicados] <- capacitacao1[i]
            indiceDuplicados <- indiceDuplicados + 1
            encontrouDuplicados <- verdadeiro
            // Para evitar de salvar duplicados adicionais do mesmo n�mero tipo 1, 1, 1, 1
         FimSe
      fimPara
   fimPara


   Se encontrouDuplicados ent�o //imprime o resultado
      escreval("")
      escreval("_____________________________________")
      escreval("|Tivemos funcion�rios que fizeram   |")
      escreval("|      as duas capacita��es         |")
      Escreval("| Os c�digos dos funcionarios s�o:  |")
      escreval("|___________________________________|")
      escreval("")
      escreval("************************")
      Para k de 1 at� indiceDuplicados - 1 fa�a
         Se duplicados[k] <> 0 ent�o // caso o elemento n�o seja zero vai imprime
            escreva(duplicados[k], "     ")
         FimSe
      fimpara
      escreval("")
      escreval("************************")
   senao
      escreval("__________________________________")
      escreval("| N�o tivemos nenhum funcion�rio |")
      escreval("|  que fez as duas capacita��es  |")
      escreval("|________________________________|")
   FimSe

fimalgoritmo
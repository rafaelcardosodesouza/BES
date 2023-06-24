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
   escreval("|                Capacitação 1:                     |")
   escreval("|Quantos funcionários irão fazer a capacitação 1?   |")
   escreval("|___________________________________________________|")
   escreva("->  ")
   leia(qtdCap1)
   escreval("")
   escreval("Digite as informações solicitadas a seguir")
   escreval("")
   Para i de 1 até qtdCap1 faça
      Escreva("Digite o código do ", i, "º funcionário: ")
      Leia(capacitacao1[i])
   fimpara

   escreval("")
   escreval("____________________________________________________")
   escreval("|                Capacitação 2:                     |")
   escreval("|Quantos funcionários irão fazer a capacitação 2?   |")
   escreval("|___________________________________________________|")
   escreva("->  ")

   leia(qtdCap2)
   escreval("")
   escreval("Digite as informações solicitadas a seguir")
   escreval("")
   Para i de 1 até qtdCap2 faça
      Escreva("Digite o código do ", i, "º funcionário: ")
      Leia(capacitacao2[i])
   fimpara

   //aqui ele verifica os dois array, caso encontre algo duplicado
   //ele salva no indiceDuplicados
   indiceDuplicados <- 1
   Para i de 1 até qtdCap1 faça
      Para j de 1 até qtdCap2 faça
         Se capacitacao1[i] = capacitacao2[j] então
            duplicados[indiceDuplicados] <- capacitacao1[i]
            indiceDuplicados <- indiceDuplicados + 1
            encontrouDuplicados <- verdadeiro
            // Para evitar de salvar duplicados adicionais do mesmo número tipo 1, 1, 1, 1
         FimSe
      fimPara
   fimPara


   Se encontrouDuplicados então //imprime o resultado
      escreval("")
      escreval("_____________________________________")
      escreval("|Tivemos funcionários que fizeram   |")
      escreval("|      as duas capacitações         |")
      Escreval("| Os códigos dos funcionarios são:  |")
      escreval("|___________________________________|")
      escreval("")
      escreval("************************")
      Para k de 1 até indiceDuplicados - 1 faça
         Se duplicados[k] <> 0 então // caso o elemento não seja zero vai imprime
            escreva(duplicados[k], "     ")
         FimSe
      fimpara
      escreval("")
      escreval("************************")
   senao
      escreval("__________________________________")
      escreval("| Não tivemos nenhum funcionário |")
      escreval("|  que fez as duas capacitações  |")
      escreval("|________________________________|")
   FimSe

fimalgoritmo

options(max.print=100000000)


contaPalavras <- function(linhas) {
  palavras <- strsplit(linhas, "\\W+")
  todas <- unlist(palavras)
  contagem <- table(todas)
  contagem[order(-contagem)]
}
linhas <- c(
  "O bonde tá não ver é isso, né o galo canta e diz assim desperta desperta que eu tô aqui já tem já tem dois anos na panela, já tem dois Coitada já cozinhando já sabe demais é o seguinte, nós vamos para o momento da nossa conversa a conversa que a gente quer realmente ter com vocês voltado para responder no momento, né? O projeto já imprimir se chama raízes da resiliência, então como é raízes o chame ela meu filho que a oportunidade chegou o Marcelo também ele ele é daqui também estava dentro também do pode colocar também ainda tem até 12, eu acho que",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",)
contaPalavras(linhas)
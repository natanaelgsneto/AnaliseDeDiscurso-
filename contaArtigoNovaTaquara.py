# Exemplo de texto
texto <- "O gato está em cima da mesa. Uma gata está ao lado do gato. Os gatos são animais curiosos. As gatas são muito elegantes."

# Lista de artigos definidos e indefinidos
artigos <- c("o", "a", "os", "as", "um", "uma", "uns", "umas")

# Dividir o texto em palavras
palavras <- strsplit(texto, "\\s+")[[1]]

# Normalizar o texto para minúsculas
palavras <- tolower(palavras)

# Contar o número de artigos no texto
num_artigos <- sum(palavras %in% artigos)

# Imprimir o resultado
print(paste("Número de artigos no texto:", num_artigos))

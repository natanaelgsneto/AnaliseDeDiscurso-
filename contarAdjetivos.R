install.packages("tidyverse")
install.packages("tidytext")
install.packages("udpipe")

library(tidyverse)
library(tidytext)
library(udpipe)
# Baixar o modelo UDPipe para português (ou outro idioma de sua escolha)
ud_model <- udpipe_download_model(language = "portuguese")

# Carregar o modelo UDPipe
ud_model <- udpipe_load_model(file = ud_model$file_model)
meu_texto <- "Este é um exemplo de texto. Vamos contar os adjetivos presentes neste texto. Texto simples, mas ilustrativo."

# Transformar o texto em um dataframe
texto_df <- tibble(text = meu_texto)
# Filtrar apenas os adjetivos
adjetivos <- anotacao_df %>%
  filter(upos == "ADJ")

# Contar os adjetivos
contagem_adjetivos <- adjetivos %>%
  count(token, sort = TRUE)

print(contagem_adjetivos)


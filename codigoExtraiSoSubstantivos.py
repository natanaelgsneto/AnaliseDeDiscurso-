import spacy

# Carrega o modelo de linguagem em português
nlp = spacy.load("pt_core_news_sm")

def extrair_substantivos(texto):
    doc = nlp(texto)
    substantivos = [token.text for token in doc if token.pos_ == "NOUN"]
    return substantivos

# Texto de exemplo
texto = "O gato está no telhado e a criança brinca no jardim."
substantivos = extrair_substantivos(texto)
print(substantivos)

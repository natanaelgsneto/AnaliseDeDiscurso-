def contar_palavras(texto):
    # Remover pontuações que não sejam letras ou números
    texto = ''.join(caracter if caracter.isalnum() else ' ' for caracter in texto)
    
    # Dividir o texto em palavras e converter tudo para minúsculas
    palavras = texto.lower().split()
    
    # Criar um dicionário para contar as ocorrências de cada palavra
    contagem = {}
    for palavra in palavras:
        if palavra in contagem:
            contagem[palavra] += 1
        else:
            contagem[palavra] = 1
    
    return contagem

def exibir_em_colunas(contagem):
    # Ordenar as palavras alfabeticamente
    palavras_ordenadas = sorted(contagem.keys())
    
    # Determinar o comprimento máximo das palavras para alinhar colunas
    max_comprimento_palavra = max(len(palavra) for palavra in palavras_ordenadas)
    
    # Exibir as palavras e suas contagens em colunas
    print("Palavra".ljust(max_comprimento_palavra + 5), "Contagem")
    print("-" * (max_comprimento_palavra + 5), "-------")
    for palavra in palavras_ordenadas:
        print(f"{palavra.ljust(max_comprimento_palavra + 5)} {contagem[palavra]}")

# Exemplo de uso
texto = """
Este é um exemplo de texto.
Neste exemplo, queremos contar quantas vezes cada palavra aparece.
É um problema interessante!
"""

resultado = contar_palavras(texto)
exibir_em_colunas(resultado)

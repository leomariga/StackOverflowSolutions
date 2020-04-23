# Solução 3: Compara última com a primera, penúltima com a segunda, até encontrar ou não alguma diferente

import re
frases = ["Never odd or even", "ROMA TIBI SUBITO MOTIBUS IBIT AMOR", "Socorram-me, subi no ônibus em Marrocos!", "Socorram-me, subi no ônibus em Maraaaaaarocos!"] 

for f in frases:
    
    # Passa tudo pra minúscula
    f = f.lower()
    
    # Usa a biblioteca Regex pra retirar qualquer caractére que não seja do alfabeto
    f = re.sub("[^a-zA-Z]+", "", f)
    
    # Basta verificar se a última letra é igual a primiera, se a penúltima é igual a segunda, e aí por diante
    for i in range(len(f)):
        if(f[i] != f[len(f)-i-1]):           # Se alguma das verficações já for diferente, não é palíndromo
            print("Não é palíndromo")
            break
        if(i == len(f)-1):
            print("É palíndromo")
            break
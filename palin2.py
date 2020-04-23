# Solução 2: inverte a frase e compara com a não invertida

import re
frases = ["Never odd or even", "ROMA TIBI SUBITO MOTIBUS IBIT AMOR", "Socorram-me, subi no ônibus em Marrocos!", "Socorram-me, subi no ônibus em Maraaaaaarocos!"] 

for f in frases:
    
    # Passa tudo pra minúscula
    f = f.lower()
    
    # Usa a biblioteca Regex pra retirar qualquer caractére que não seja do alfabeto
    f = re.sub("[^a-zA-Z]+", "", f)
    
    # Inverte a frase toda 
    f_invertida = f[::-1]
    
    # Exibe frase normal e invertida
    print(f, "   -   ", f_invertida)
    
    # Exibe resultado
    if(f == f_invertida):
        print("É palíndromo sim")
    else:
        print("Não é palíndromo")
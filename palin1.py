# Solução 1: Separa a frase em duas metades, inverte a segunda, e compara com a primeira

import re
frases = ["Never odd or even", "ROMA TIBI SUBITO MOTIBUS IBIT AMOR", "Socorram-me, subi no ônibus em Marrocos!", "Socorram-me, subi no ônibus em Maraaaaaarocos!"] 

for f in frases:
    
    # Passa tudo pra minúscula
    f = f.lower()
    
    # Usa a biblioteca Regex pra retirar qualquer caractére que não seja do alfabeto
    f = re.sub("[^a-zA-Z]+", "", f)
    
    # Pega o tamanho da frase toda
    tamanho_f = len(f)
    
    # Inicialmente supomos que não é palíndromo
    e_palindromo = False
    
    # Se tiver um número par de letras, as duas metades devem ser iguais, mas invertidas
    if(tamanho_f % 2 == 0):
        f1 = f[0:int(tamanho_f/2)]           # Pega primeira metade da frase
        f2 = f[int(tamanho_f/2):]            # Pega segunda metade da frase
        f2_invertida = f2[::-1]              # Inverte segunda metade
        print(f1, " - ", f2_invertida)
        if(f1 == f2_invertida):              # Se a primeira metade for igual a segunda metade invertida, então é palíndromo
            e_palindromo = True
    
    # Se tiver u número impar de letras, a letra central deve ser considerada nas duas metades
    else:
        f1 = f[0:int(tamanho_f/2+1)]           # Pega primeira metade da frase
        f2 = f[int(tamanho_f/2):]              # Pega segunda metade da frase
        f2_invertida = f2[::-1]                # Inverte segunda metade
        print(f1, " - ", f2_invertida)
        if(f1 == f2_invertida):                # Se a primeira metade for igual a segunda metade invertida, então é palíndromo
            e_palindromo = True
            
    # Exibe resultado
    if(e_palindromo):
        print("É palíndromo sim")
    else:
        print("Não é palíndromo")

    
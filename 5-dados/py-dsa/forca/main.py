import random
import forca
import os

base = [
    'banana',
    'abacaxi',
    'uva',
    'melao',
    'melancia',
    'morango',
    'pera',
    'maracuja',
    'lichia'
]

tentativas = 6
letrasErradas = []
palavra = random.choice(base)
linhas = list(map(lambda x: '_' if(x != ' ') else ' ', palavra))
ganhou = False


while tentativas != 0:

    if ganhou:
        break


    print('='*20)
    print('JOGO DA FORCA')
    print('='*20)
    forca.forca(tentativas, letrasErradas)

    print('\nPalavra: ', end='')

    for l in linhas:
        print(f'{l} ', end='')
    print('')

    letra = str(input('Informe a letra para chute: ')).lower().strip()
    os.system('cls') or None


    if letra in palavra:

        casas = []
        for x, y in enumerate(palavra):
            if y == letra:
                casas.append(x)
        
        for x in casas:
            linhas[x] = letra
        
    elif letra in letrasErradas:
        continue
    else:
        letrasErradas.append(letra)
        tentativas -= 1
    
    ganhou = forca.ganhou(linhas)


    
if ganhou:
    print(f'Parabéns, você ganhou! A palavra era {palavra}')
else:
    print(f'Perdeu mané! A palavra era {palavra}')
def forca(tentativas, letrasErradas):
    if tentativas == 5:
        print('   ----------')
        print('   |         |')
        print('   |         O')
        print('   |        ')
        print('   |         ')
        print('___|___     ')
    elif tentativas == 4:
        print('   ----------')
        print('   |         |')
        print('   |         O')
        print('   |         |')
        print('   |         ')
        print('___|___     ')
    elif tentativas == 3:
        print('   ----------')
        print('   |         |')
        print('   |         O')
        print('   |        \|')
        print('   |         ')
        print('___|___     ')
    elif tentativas == 2:
        print('   ----------')
        print('   |         |')
        print('   |         O')
        print('   |        \|/')
        print('   |         ')
        print('___|___     ')
    elif tentativas == 1:
        print('   ----------')
        print('   |         |')
        print('   |         O')
        print('   |        \|/')
        print('   |         |')
        print('___|___     ')
    elif tentativas == 0:
        print('   ----------')
        print('   |         |')
        print('   |         O')
        print('   |        \|/')
        print('   |         |')
        print('___|___     / \\')
    elif tentativas == 6:

        print('   ----------')
        print('   |         |')
        print('   |         ')
        print('   |        ')
        print('   |         ')
        print('___|___     ')

    print('Letras erradas já informadas: ', end='')

    for l in letrasErradas:
        print(f'{l} ', end='')
    print('')

def ganhou(linhas):
    if '_' in linhas:
        return False
    else:
        return True
def criaMatriz(linhas, colunas):
    """
    linhas: quantas linhas o tabuleiro vai ter
    colunas: quantas colunas o tabuleiro vai ter
    """
    matriz = list()
    l1 = list()
    l2 = list()
    l3 = list()
    for c in range(0,linhas):
        l1.append(' ')
        l2.append(' ')
        l3.append(' ')
    
    matriz.append(l1)
    matriz.append(l2)
    matriz.append(l3)

    return matriz


def mostrarTabuleiro(tabuleiro):
    print('\n  A B C')
    for c in range(0,3):
        print(f'{c+1} ', end='')

        for d in range(0,3):
            print(f'{tabuleiro[c][d]}', end='')

            if d != 2:
                print('|', end='')

        print('')

        if c != 2:
            print('  ', end='')
            print('-'*6)


def coordenadas(linha, coluna):
    colunaReal = 0

    if coluna == 'a':
        colunaReal = 0
    elif coluna == 'b':
        colunaReal = 1
    elif coluna == 'c':
        colunaReal = 2
    
    casa = [linha-1, colunaReal]
    return casa


def verificaCasa(linha, coluna, tabuleiro):
    casa = coordenadas(linha, coluna)

    if tabuleiro[casa[0]][casa[1]] != ' ':
        return False
    else:
        return True


def verificaGanhador(tabuleiro, jogada):

    if (tabuleiro[0][0] == tabuleiro[0][1] and tabuleiro[0][1] == tabuleiro[0][2] and ' ' != tabuleiro[0][2]) or (tabuleiro[1][0] == tabuleiro[1][1] and tabuleiro[1][1] == tabuleiro[1][2] and ' ' != tabuleiro[1][2]) or (tabuleiro[2][0] == tabuleiro[2][1] and tabuleiro[2][1] == tabuleiro[2][2] and ' ' != tabuleiro[2][2]) or (tabuleiro[0][0] == tabuleiro[1][0] and tabuleiro[1][0] == tabuleiro[2][0] and ' ' != tabuleiro[2][0]) or (tabuleiro[0][1] == tabuleiro[1][1] and tabuleiro[1][1] == tabuleiro[2][1] and ' ' != tabuleiro[2][1]) or (tabuleiro[0][2] == tabuleiro[1][2] and tabuleiro[1][2] == tabuleiro[2][2] and ' ' != tabuleiro[2][2]) or (tabuleiro[0][0] == tabuleiro[1][1] and tabuleiro[1][1] == tabuleiro[2][2] and ' ' != tabuleiro[2][2]) or (tabuleiro[0][2] == tabuleiro[1][1] and tabuleiro[1][1] == tabuleiro[2][0] and ' ' != tabuleiro[2][0]):
    
        return True
    else:
        return False

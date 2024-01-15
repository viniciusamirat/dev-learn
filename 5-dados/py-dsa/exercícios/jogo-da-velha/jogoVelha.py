import velha

tabuleiro = velha.criaMatriz(3,3)
fim = 0
jogada = 'X'
coluna = ' '
linha = 0

print('='*20)
print('JOGO DA VELHA')
print('='*20)

velha.mostrarTabuleiro(tabuleiro)

while fim == 0:

    if jogada == 'X':
        print('\n----Jogador X----')
        coluna = str(input('Coluna: ')).lower().strip()
        linha = int(input('Linha: '))
    else:
        print('\n----Jogador O----')
        coluna = str(input('Coluna: ')).lower().strip()
        linha = int(input('Linha: '))

    if coluna in ('a', 'b', 'c') and linha in (1,2,3):
        if velha.verificaCasa(linha, coluna, tabuleiro):
            coordenadas = velha.coordenadas(linha, coluna)

            tabuleiro[coordenadas[0]][coordenadas[1]] = jogada

            velha.mostrarTabuleiro(tabuleiro)

            if velha.verificaGanhador(tabuleiro, jogada):
                print(f'O ganhador é o {jogada}')
                break

            if jogada == 'X':
                jogada = 'O'
            else:
                jogada = 'X'

        else:
            print('jogada não permitida, casa já ocupada!')
    else:
        print('\nLinha ou coluna inválida!\n')






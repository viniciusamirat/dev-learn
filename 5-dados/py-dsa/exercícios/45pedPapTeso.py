from random import randint

print('-'*20)
print('pedra papel ou tesoura')
print('-'*20)

print('\nEscolha uma opção:')
print('[0] Pedra')
print('[1] Papel')
print('[2] Tesoura')

opcao = int(input('opção: '))

computer = randint(0,2)

if computer == 0 and opcao == 1:
    print(f'Voce ganhou! Computer {computer} e voce {opcao}')
elif computer ==0 and opcao == 2:
    print(f'Voce perdeu! Computer {computer} e voce {opcao}')
elif computer == 1 and opcao ==0:
    print(f'Voce perdeu! Computer {computer} e voce {opcao}')
elif computer == 1 and opcao == 2:
    print(f'Voce ganhou! Computer {computer} e voce {opcao}')
elif computer == 2 and opcao == 0:
    print(f'Voce ganhou! Computer {computer} e voce {opcao}')
elif computer == 2 and opcao == 1:
    print(f'Voce perdeu! Computer {computer} e voce {opcao}')
else:
    print('deu igual')


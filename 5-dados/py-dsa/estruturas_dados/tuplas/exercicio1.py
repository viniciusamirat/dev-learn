extenso = (
    'um',
    'dois',
    'três',
    'quatro',
    'cinco',
    'seis',
    'sete',
    'oito',
    'nove',
    'dez'
)
opcao = 0

while not(opcao >= 1 and opcao <= 10):
    
    opcao = int(input('Digite um número de 1 até 10: '))
    if (opcao < 1 or opcao > 10):
        print('informe um número válido!')
    else:
        print(f'você digitou o número {extenso[opcao-1]}')
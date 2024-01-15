import random


c = 0
nomes = list()
escolhido = ' '
while c == 0:
    opcao = int(input('informe 0 para digitar um nome ou 1 para finalizar: '))
    
    if opcao == 0:
        nome = str(input('informe um nome: '))
        nomes.append(nome)
    else:
        escolhido = random.choice(nomes)
        print(f'o escolhido foi o {escolhido}')
        c = opcao
    
    

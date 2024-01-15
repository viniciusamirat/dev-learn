nome = str(input('digite seu nome: '))

print(f'seu nome em maiúsculas: {nome.upper()}')
print(f'seu nome em minúsculas: {nome.lower()}')
print(f'seu nome tem {len(nome)} letras')

nomeSeparado = nome.split()

print(f'seu primerio nome é {nomeSeparado[0]} e ele tem {len(nomeSeparado[0])} letras')

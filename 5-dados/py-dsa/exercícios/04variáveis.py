valor = input('Digite algo: ')

print(f'o tipo desse valor é: {type(valor)}')
print(f'é um número: {valor.isnumeric()}')
print(f'é uma string: {valor.isalpha()}')
print(f'tem números e letra: {valor.isalnum()}')
print(f'está em maiúsculas: {valor.isupper()}')
print(f'está em minúsculas: {valor.islower()}')
print(f'está capitalizada: {valor.istitle()}')
print(f'é só espaço: {valor.isspace()}')


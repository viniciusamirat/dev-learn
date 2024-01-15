nome = 'vinicius'
print(len(nome))

print(nome[1])

print(nome[0])

print('\n')

print(nome[:3])

print(nome[1:])

#ultima letra
print(nome[-1])

#fatiar a string
print(nome[::2])

#alterando um caracter
print(nome)
nome[0] = 'V'
print(nome)

a = input('Digite algo: ').strip()#elimina os espaços
print('Contém apenas espaços? ', a.isspace())
print('É um número? ', a.isnumeric())
print('É alfabético? ', a.isalpha())
print('Contém letras e números? ', a.isalnum())
print('Está em maiúsculas? ', a.isupper())
print('Está em minúsculas? ', a.islower())
print('Está capitalizado? ', a.capitalize())
print('É decimal? ', a.isdecimal())

#dividir as palavras da frate
frase = 'curso de python'
print(frase.split())
#em vez de espaço, escolhe uma letra pra separar
print(frase.split('o'))
#conta quantas vezes uma letra aparece
print(frase.count('o'))
#posição de uma letra
print(frase.find('o'))

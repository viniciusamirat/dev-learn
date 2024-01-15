tupla = ('pizza', 'lanche', 'suco')

#tuplas são imutáveis, então vai dar erro
tupla[0] = 'pizza2'

#organizar
print(sorted(tupla))

#quantas vezes aparece algo
nuns = (1,2,3,4,5,6,7,6,9)

print(nuns.count(6))

#em que posição está tal coisa
print(nuns.index(3))

#O PYTHON ACEITA VARIOS TIPOS DENTRO DE UMA MESMA TUPLA
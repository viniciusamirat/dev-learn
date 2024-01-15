#é uma função, que aplica outra função em cada item de uma lista, tupla ou objeto iterável

def dobro(x):
    return x * 2


nuns = [1,2,3,4,5]

lista = list(map(dobro, nuns))

print(lista)

for x in map(dobro, nuns):
    print(x)

#---------------------

#com lambda
lista2 = map(lambda x: x * 2, nuns)

print(list(lista2))

nuns2 = [6,7,8,9,1]
print(list(map(lambda x, y: x + y, nuns, nuns2)))
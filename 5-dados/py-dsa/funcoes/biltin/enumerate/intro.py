#enumerate enumera cada elemento de uma estrutura iterável

lista = [1,2,3,4,5]

print(list(enumerate(lista)))

for indice, valor in enumerate(lista):
    if indice >= 3:
        break
    else:
        print(valor)


#agupa elemetos de estruturas interáveis em pares, podendo ser convertido em outro tipo de estrutura de dados

lista1 = [1,2,3,4]
lista2 = [6,7,8,9]

print(list(zip(lista1, lista2)))
#AS LISTAS TEM QUE SER DO MESMO TAMANHO

dic1 = {
    'a': 1,
    'b': 2
}
dic2 = {
    'c': 3,
    'd': 4
}

#combinando chaves
print(list(zip(dic1, dic2)))

#combinando valores
print(list(zip(dic1.values(), dic2.values())))

#trocar valores entre dic
dicTemp = {}
def troca(d1, d2):
    global dicTemp
    for d1key, d2value in zip(d1, d2.values()):
        dicTemp[d1key] = d2value
    return dicTemp

print(troca(dic1, dic2))
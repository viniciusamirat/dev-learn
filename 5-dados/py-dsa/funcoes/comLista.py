def dobra(lista): #o python usa parâmetros por referência, então tudo que é passado é alterado também, apenas em listas
    c = 0
    while c < len(lista):
        lista[c] *= 2
        c +=1

nuns = [1,2,3,4,5]
dobra(nuns)
print(nuns)
import numpy as np

#criando um array
arr = np.array([1,2,3,4,5,7,8,9])

print(arr)

print(type(arr))

#verificando o formato (dimenções da matriz)
print(arr.shape)

print(arr[3])

#o último valor não participa, vai até 3 neste caso
print(arr[1:4])

#criado indices
indices = [1,3,5]

print(arr[indices])

#criando uma mascara boleana para os elementos pares
mask = (arr % 2 == 0)

print(arr[mask])

arr[0] = 3

print(arr[0])
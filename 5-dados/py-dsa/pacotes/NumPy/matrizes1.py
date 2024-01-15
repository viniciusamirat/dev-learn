import numpy as np

#criando matriz
arr = np.array([[1,2,3,4,5], [2,4,6,8, 9]])

print(arr)

#matriz 2x3 com números "1"
arr2 = np.ones((2,3))

print(arr2)

#criando uma matriz a partir de uma lista de listas
lista = [[1,2,3], [4,5,6],[7,8,9]]

arr3 = np.matrix(lista)

print(arr3)
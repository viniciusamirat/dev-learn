import numpy as np

arr = np.array([1,2,3,4,5,6,7,8,9])

#soma acumulada
print(arr.cumsum())

#produto acumulado
print(arr.cumprod())

#craindo uma progressão aritimética a partir de um intervalo - start, stop, step
arr2 = np.arange(0,50,5)
print(arr2)

#criando array preenchidos com zeros
arr3 = np.zeros(10)
print(arr3)

#retorna 1 nas posições diagonais e 0 nas demais
arr4 = np.eye(3)
print(arr4)

#os valores passados fromam uma diagonal
arr5 = np.diag(np.array([1,2,5,8]))
print(arr5)

print(np.linspace(0,10))
print(np.linspace(0,10, 15))
print(np.logspace(0,10))


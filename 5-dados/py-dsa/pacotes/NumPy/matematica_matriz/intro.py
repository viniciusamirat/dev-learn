import numpy as np

arr = np.array([[1,2], [1,2]])
arr2 = np.array([[1,2], [1,2]])

print(arr.shape)
print(arr2.shape)


#regra: numero de colunas da primeira tem que ser o mesmo de linhas da segunda
#multiplicação de matrizes
print(f'mult {np.dot(arr, arr2)}')
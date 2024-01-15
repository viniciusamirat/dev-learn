import numpy as np

arr = np.diag(np.arange(3))

print(arr)

print(arr[1,1])
print(arr[1])
print(arr[:, 2])

arr2 = np.arange(10)

print(arr2[1:7:2])

#comparndo item a item
print(arr == arr2)

arr.min()

arr.max()

#adiciona 1,5 a cada item do arrat
arr = arr + 1.5

print(arr)

#arrendondando
print(f'arredondado {np.around(arr)}')

#array em lista
arr3 = np.array([[1,2,3,4,5], [1,2,3,4,5]])

arr4 = arr3.flatten()

print(arr4)

#repetir valores
arr5 = np.repeat(arr4, 2)
#ou
arr6 = np.tile(arr4, 2)

print(arr5)
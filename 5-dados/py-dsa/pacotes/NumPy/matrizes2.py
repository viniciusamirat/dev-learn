import numpy as np

#criando matriz
arr = np.array([[1,2,3,4,5], [2,4,6,8, 9]])

print(arr)

#acessando um item da matriz
print(arr[1,0])#linha1 coluna 0

#forçar um tipo de dado na criação de uma matriz
arr2 = np.array([1,2,3,4], dtype=np.float64)

#retornar o tamanho em bytes de cada elemento do array
print(f'teste {arr2.itemsize}')

print(f'numero de dimenções {arr2.ndim}')
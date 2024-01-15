import numpy as np

arr = np.array([1,2,3,4,5,6,7,8,9, 1000])

#media 
print(f'media {arr.mean()}')

#Desvio padrão
print(f'desvio padrão {np.std(arr)}')

#VARIANCIA
print(np.var(arr))
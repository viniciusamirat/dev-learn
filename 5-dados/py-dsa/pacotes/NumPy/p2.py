import numpy as np

valores = [1,2,3,4,5,6,7,8,9]

arr = np.array(valores)

try:
    arr[0] = 'a'
except:
    print('valor diferente dos já pertencentes neste array')
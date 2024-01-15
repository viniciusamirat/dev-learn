import os
import numpy as np

filename = os.path.join('dataset.csv')


arr = np.loadtxt(filename, delimiter=',', usecols=(1,2,3), skiprows=1)


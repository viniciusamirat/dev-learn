import pandas as pd
import csv

with open('teste2.csv', 'w') as arq:
    writer = csv.writer(arq)
    writer.writerow(('nome', 'idade', 'peso'))
    writer.writerow(('vini', 19, 70))
    writer.writerow(('julia', 18, 50))

arq = 'teste2.csv'

df = pd.read_csv(arq)

print(df.head())

import pandas as pd

arq = "../manip_arquivos/arquivos/salarios.csv"

df = pd.read_csv(arq)

print(df.head())

print(df["Position Title"].value_counts())
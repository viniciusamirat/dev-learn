arq = open('arquivos/salarios.csv', 'r')

data = arq.read()

rows = data.split('\n')#dividiu em linhas

print(rows)
#-----------------------------------------
#dividir em colunas

full_data = []

for row in rows:
    split_row = row.split(',')
    full_data.append(split_row)

print(full_data)